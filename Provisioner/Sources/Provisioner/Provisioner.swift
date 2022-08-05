import Foundation
import os
import SwiftProtobuf
import CoreBluetoothMock
import Combine

public class Provisioner {
    public enum Error: Swift.Error {
        case canNotConnect
        case wifiServiceNotFound
        case versionCharacteristicNotFound
        case controlCharacteristicPointNotFound
        case dataOutCharacteristicNotFound
        case requestFailed
        
        case noResponse
        case unknownDeviceStatus
    }
    
    public enum WiFiStatus: CustomDebugStringConvertible {
        case disconnected
        case authentication
        case association
        case obtainingIp
        case connected
        case connectionFailed(ConnectionFailure)
        
        public enum ConnectionFailure {
            case authError
            case networkNotFound
            case timeout
            case failIp
            case failConn
            case unknown
        }

        public var debugDescription: String {
            switch self {
            case .disconnected: return "disconnected"
            case .authentication: return "authentication"
            case .association: return "association"
            case .obtainingIp: return "obtainingIp"
            case .connected: return "connected"
            case .connectionFailed(let reason): return "connectionFailed: \(reason)"
            }
        }
    }
    
    public struct Service {
        public static let wifi = UUID(uuidString: "14387800-130c-49e7-b877-2881c89cb258")!
        
        public struct Characteristic {
            public static let version = UUID(uuidString: "14387801-130c-49e7-b877-2881c89cb258")!
            public static let controlPoint = UUID(uuidString: "14387802-130c-49e7-b877-2881c89cb258")!
            public static let dataOut = UUID(uuidString: "14387803-130c-49e7-b877-2881c89cb258")!
        }
    }
    
    private let logger = Logger(
        subsystem: Bundle(for: Provisioner.self).bundleIdentifier ?? "",
        category: "provisioner-manager"
    )
    
    private let centralManager = CentralManager()

    public let deviceID: UUID
    
    public init(deviceID: UUID) {
        self.deviceID = deviceID
    }
}

extension Provisioner {
    open func connect() async throws {
        do {
            _ = try await centralManager.connectPeripheral(deviceID)
        } catch let e {
            logger.error("failed to connect to device: \(e.localizedDescription)")
            throw Error.canNotConnect
        }
    }
    
    open func readVersion() async throws -> String? {
        let versionData: Data? = try await centralManager.readValue(for: .version)
        
        let version = try Info(serializedData: versionData!).version
        
        logger.info("Read version: \(version, privacy: .public)")
        
        return "\(version)"
    }
    
    open func getStatus() async throws -> WiFiStatus {
        let response = (try await sendRequestToDataPoint(opCode: .getStatus))
        guard case .success = response.status else {
            throw Error.unknownDeviceStatus
        }
        return response.deviceStatus.state.toPublicStatus(withReason: response.deviceStatus.reason)
    }
    
    open func startScan() async throws -> AnyPublisher<AccessPoint, Swift.Error> {
        let response = (try await sendRequestToDataPoint(opCode: .startScan))
        guard case .success = response.status else {
            throw Error.unknownDeviceStatus
        }
        return centralManager.notifications(for: .dataOut)
                .tryMap { [weak self] data -> AccessPoint in
                    let result = try Result(serializedData: data)
                    self?.logger.debug("Read data: \(try! result.jsonString(), privacy: .public)")
                    let wifiInfo = result.scanRecord.wifi
                    return AccessPoint(wifiInfo: wifiInfo, RSSI: result.scanRecord.rssi)
                }
                .eraseToAnyPublisher()
    }
    
    open func stopScan() async throws {
        try await sendRequestToDataPoint(opCode: .stopScan)
    }

    open func startProvision(accessPoint: AccessPoint, passphrase: String?) async throws -> AnyPublisher<WiFiStatus, Swift.Error> {
        var config = WifiConfig()
        config.wifi = accessPoint.wifiInfo
        if let passphrase = passphrase {
            config.passphrase = passphrase.data(using: .utf8)!
        }

        // WiFiStatus publisher
        let statusPublisher = centralManager.notifications(for: .dataOut)
            .tryMap { data -> WiFiStatus in
                let result = try Result(serializedData: data)
                return result.state.toPublicStatus()
            }
            .eraseToAnyPublisher()

        // Send request
        let response = try await sendRequestToDataPoint(opCode: .setConfig, config: config)
        guard case .success = response.status else {
            throw Error.requestFailed
        }

        return statusPublisher
    }
}
 
extension Provisioner {
    @discardableResult
    private func sendRequestToDataPoint(opCode: OpCode, config: WifiConfig? = nil) async throws -> Response {
        var request = Request()
        request.opCode = opCode
        if let conf = config {
            request.config = conf
        }

        let data = try request.serializedData()
        let responseData = try await centralManager.writeValue(data, for: .controlPoint)
        let response = try Response(serializedData: responseData)
        logger.debug("Response: \(try! response.jsonString(), privacy: .public)")
        return response
    }
}
