// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: common.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// The Op Code for requests. 
enum OpCode: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// Cannot be used in request.
  /// In the response it means that decoding the Op Code
  /// in the request has failed.
  case reserved // = 0

  /// Returns the device status.
  /// 
  /// Request parameters:
  ///  - none
  /// Response parameters:
  ///  - DeviceStatus
  case getStatus // = 1

  /// Starts Wifi scan.
  ///
  /// Request parameters:
  ///  - ScanParams
  /// Response parameters:
  ///  - none
  case startScan // = 2

  /// Manually stops Wifi scan.
  ///
  /// Request parameters:
  ///  - none
  /// Response parameters:
  ///  - none
  case stopScan // = 3

  /// Used to provision the Host to the given WiFi network.
  ///
  /// Request parameters:
  ///  - WifiConfig
  /// Response parameters:
  ///  - none
  case setConfig // = 4

  /// Erases previously saved configuration.
  ///
  /// Request parameters:
  ///  - none
  /// Response parameters:
  ///  - none
  case forgetConfig // = 5

  init() {
    self = .reserved
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .reserved
    case 1: self = .getStatus
    case 2: self = .startScan
    case 3: self = .stopScan
    case 4: self = .setConfig
    case 5: self = .forgetConfig
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .reserved: return 0
    case .getStatus: return 1
    case .startScan: return 2
    case .stopScan: return 3
    case .setConfig: return 4
    case .forgetConfig: return 5
    }
  }

}

#if swift(>=4.2)

extension OpCode: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

/// Response status code. 
enum Status: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// Returned when the request was successfully processed.	
  case success // = 0

  /// Returned when the request cannot be processed due to invalid arguments.
  /// For example, if the required argument is missing.
  case invalidArgument // = 1

  /// Returned when failed to decode the request.
  case invalidProto // = 2

  /// Returned in case of internal error. Hopefully never.
  case internalError // = 3

  init() {
    self = .success
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .success
    case 1: self = .invalidArgument
    case 2: self = .invalidProto
    case 3: self = .internalError
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .success: return 0
    case .invalidArgument: return 1
    case .invalidProto: return 2
    case .internalError: return 3
    }
  }

}

#if swift(>=4.2)

extension Status: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

/// The state of Wi-Fi station. 
enum ConnectionState: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case disconnected // = 0
  case authentication // = 1
  case association // = 2
  case obtainingIp // = 3
  case connected // = 4
  case connectionFailed // = 5

  init() {
    self = .disconnected
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .disconnected
    case 1: self = .authentication
    case 2: self = .association
    case 3: self = .obtainingIp
    case 4: self = .connected
    case 5: self = .connectionFailed
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .disconnected: return 0
    case .authentication: return 1
    case .association: return 2
    case .obtainingIp: return 3
    case .connected: return 4
    case .connectionFailed: return 5
    }
  }

}

#if swift(>=4.2)

extension ConnectionState: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

/// Connection failure reason. 
enum ConnectionFailureReason: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// Authentication error.
  case authError // = 0

  /// The specified network could not be find.
  case networkNotFound // = 1

  /// Timeout occurred.
  case timeout // = 2

  /// Could not obtain IP from provided provisioning information.
  case failIp // = 3

  /// Could not connect to provisioned network.
  case failConn // = 4

  init() {
    self = .authError
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .authError
    case 1: self = .networkNotFound
    case 2: self = .timeout
    case 3: self = .failIp
    case 4: self = .failConn
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .authError: return 0
    case .networkNotFound: return 1
    case .timeout: return 2
    case .failIp: return 3
    case .failConn: return 4
    }
  }

}

#if swift(>=4.2)

extension ConnectionFailureReason: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

/// Wi-Fi Band. 
enum Band: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case any // = 0
  case band24Gh // = 1
  case band5Gh // = 2

  init() {
    self = .any
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .any
    case 1: self = .band24Gh
    case 2: self = .band5Gh
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .any: return 0
    case .band24Gh: return 1
    case .band5Gh: return 2
    }
  }

}

#if swift(>=4.2)

extension Band: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

/// Wi-Fi Authentication Mode. 
enum AuthMode: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case `open` // = 0
  case wep // = 1
  case wpaPsk // = 2
  case wpa2Psk // = 3
  case wpaWpa2Psk // = 4
  case wpa2Enterprise // = 5

  /// Note: More modes can be added in the future.
  case wpa3Psk // = 6

  init() {
    self = .open
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .open
    case 1: self = .wep
    case 2: self = .wpaPsk
    case 3: self = .wpa2Psk
    case 4: self = .wpaWpa2Psk
    case 5: self = .wpa2Enterprise
    case 6: self = .wpa3Psk
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .open: return 0
    case .wep: return 1
    case .wpaPsk: return 2
    case .wpa2Psk: return 3
    case .wpaWpa2Psk: return 4
    case .wpa2Enterprise: return 5
    case .wpa3Psk: return 6
    }
  }

}

#if swift(>=4.2)

extension AuthMode: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

/// Scanning parameters. 
struct ScanParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var band: Band {
    get {return _band ?? .any}
    set {_band = newValue}
  }
  /// Returns true if `band` has been explicitly set.
  var hasBand: Bool {return self._band != nil}
  /// Clears the value of `band`. Subsequent reads from it will return its default value.
  mutating func clearBand() {self._band = nil}

  var passive: Bool {
    get {return _passive ?? false}
    set {_passive = newValue}
  }
  /// Returns true if `passive` has been explicitly set.
  var hasPassive: Bool {return self._passive != nil}
  /// Clears the value of `passive`. Subsequent reads from it will return its default value.
  mutating func clearPassive() {self._passive = nil}

  /// 0 - no timeout
  var periodMs: UInt32 {
    get {return _periodMs ?? 0}
    set {_periodMs = newValue}
  }
  /// Returns true if `periodMs` has been explicitly set.
  var hasPeriodMs: Bool {return self._periodMs != nil}
  /// Clears the value of `periodMs`. Subsequent reads from it will return its default value.
  mutating func clearPeriodMs() {self._periodMs = nil}

  var groupChannels: UInt32 {
    get {return _groupChannels ?? 0}
    set {_groupChannels = newValue}
  }
  /// Returns true if `groupChannels` has been explicitly set.
  var hasGroupChannels: Bool {return self._groupChannels != nil}
  /// Clears the value of `groupChannels`. Subsequent reads from it will return its default value.
  mutating func clearGroupChannels() {self._groupChannels = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _band: Band? = nil
  fileprivate var _passive: Bool? = nil
  fileprivate var _periodMs: UInt32? = nil
  fileprivate var _groupChannels: UInt32? = nil
}

/// Wi-Fi details. 
struct WifiInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var ssid: Data {
    get {return _ssid ?? Data()}
    set {_ssid = newValue}
  }
  /// Returns true if `ssid` has been explicitly set.
  var hasSsid: Bool {return self._ssid != nil}
  /// Clears the value of `ssid`. Subsequent reads from it will return its default value.
  mutating func clearSsid() {self._ssid = nil}

  var bssid: Data {
    get {return _bssid ?? Data()}
    set {_bssid = newValue}
  }
  /// Returns true if `bssid` has been explicitly set.
  var hasBssid: Bool {return self._bssid != nil}
  /// Clears the value of `bssid`. Subsequent reads from it will return its default value.
  mutating func clearBssid() {self._bssid = nil}

  var band: Band {
    get {return _band ?? .any}
    set {_band = newValue}
  }
  /// Returns true if `band` has been explicitly set.
  var hasBand: Bool {return self._band != nil}
  /// Clears the value of `band`. Subsequent reads from it will return its default value.
  mutating func clearBand() {self._band = nil}

  var channel: UInt32 {
    get {return _channel ?? 0}
    set {_channel = newValue}
  }
  /// Returns true if `channel` has been explicitly set.
  var hasChannel: Bool {return self._channel != nil}
  /// Clears the value of `channel`. Subsequent reads from it will return its default value.
  mutating func clearChannel() {self._channel = nil}

  var auth: AuthMode {
    get {return _auth ?? .open}
    set {_auth = newValue}
  }
  /// Returns true if `auth` has been explicitly set.
  var hasAuth: Bool {return self._auth != nil}
  /// Clears the value of `auth`. Subsequent reads from it will return its default value.
  mutating func clearAuth() {self._auth = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _ssid: Data? = nil
  fileprivate var _bssid: Data? = nil
  fileprivate var _band: Band? = nil
  fileprivate var _channel: UInt32? = nil
  fileprivate var _auth: AuthMode? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension OpCode: @unchecked Sendable {}
extension Status: @unchecked Sendable {}
extension ConnectionState: @unchecked Sendable {}
extension ConnectionFailureReason: @unchecked Sendable {}
extension Band: @unchecked Sendable {}
extension AuthMode: @unchecked Sendable {}
extension ScanParams: @unchecked Sendable {}
extension WifiInfo: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension OpCode: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RESERVED"),
    1: .same(proto: "GET_STATUS"),
    2: .same(proto: "START_SCAN"),
    3: .same(proto: "STOP_SCAN"),
    4: .same(proto: "SET_CONFIG"),
    5: .same(proto: "FORGET_CONFIG"),
  ]
}

extension Status: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SUCCESS"),
    1: .same(proto: "INVALID_ARGUMENT"),
    2: .same(proto: "INVALID_PROTO"),
    3: .same(proto: "INTERNAL_ERROR"),
  ]
}

extension ConnectionState: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DISCONNECTED"),
    1: .same(proto: "AUTHENTICATION"),
    2: .same(proto: "ASSOCIATION"),
    3: .same(proto: "OBTAINING_IP"),
    4: .same(proto: "CONNECTED"),
    5: .same(proto: "CONNECTION_FAILED"),
  ]
}

extension ConnectionFailureReason: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "AUTH_ERROR"),
    1: .same(proto: "NETWORK_NOT_FOUND"),
    2: .same(proto: "TIMEOUT"),
    3: .same(proto: "FAIL_IP"),
    4: .same(proto: "FAIL_CONN"),
  ]
}

extension Band: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BAND_ANY"),
    1: .same(proto: "BAND_2_4_GH"),
    2: .same(proto: "BAND_5_GH"),
  ]
}

extension AuthMode: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OPEN"),
    1: .same(proto: "WEP"),
    2: .same(proto: "WPA_PSK"),
    3: .same(proto: "WPA2_PSK"),
    4: .same(proto: "WPA_WPA2_PSK"),
    5: .same(proto: "WPA2_ENTERPRISE"),
    6: .same(proto: "WPA3_PSK"),
  ]
}

extension ScanParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ScanParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "band"),
    2: .same(proto: "passive"),
    3: .standard(proto: "period_ms"),
    4: .standard(proto: "group_channels"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._band) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self._passive) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self._periodMs) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self._groupChannels) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._band {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._passive {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._periodMs {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._groupChannels {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ScanParams, rhs: ScanParams) -> Bool {
    if lhs._band != rhs._band {return false}
    if lhs._passive != rhs._passive {return false}
    if lhs._periodMs != rhs._periodMs {return false}
    if lhs._groupChannels != rhs._groupChannels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WifiInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "WifiInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "ssid"),
    2: .same(proto: "bssid"),
    3: .same(proto: "band"),
    4: .same(proto: "channel"),
    5: .same(proto: "auth"),
  ]

  public var isInitialized: Bool {
    if self._ssid == nil {return false}
    if self._bssid == nil {return false}
    if self._channel == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self._ssid) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self._bssid) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self._band) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self._channel) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self._auth) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._ssid {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._bssid {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._band {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._channel {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._auth {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 5)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WifiInfo, rhs: WifiInfo) -> Bool {
    if lhs._ssid != rhs._ssid {return false}
    if lhs._bssid != rhs._bssid {return false}
    if lhs._band != rhs._band {return false}
    if lhs._channel != rhs._channel {return false}
    if lhs._auth != rhs._auth {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
