import Foundation

/// Provider of fake WiFi scan results for ``MockDevice``.
public protocol MockScanResultProvider {
    typealias FakeWiFiScanResult = (WifiInfo, Int)
    
    var allNetworks: [FakeWiFiScanResult] { get }
}

/// Default implementation of `MockScanResultProvider` protocol.
public struct WiFiScanResultFaker: MockScanResultProvider {
    
    public init() {}
    
    public let home6 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([245, 76, 245, 189, 62, 218]))!, band: .band24Gh, channel: 6, auth: .wpaPsk), -33)
    public let home7 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([161, 174, 165, 249, 223, 244]))!, band: .band24Gh, channel: 7, auth: .wpaPsk), -63)
    public let home11 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([177, 74, 35, 109, 114, 10]))!, band: .band24Gh, channel: 11, auth: .wpaPsk), -83)
    public let home37 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([115, 203, 232, 127, 208, 19]))!, band: .band5Gh, channel: 37, auth: .wpaPsk), -86)
    public let home39 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([196, 114, 36, 90, 25, 246]))!, band: .band5Gh, channel: 39, auth: .wpaPsk), -79)
    public let home45 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([179, 182, 54, 50, 51, 60]))!, band: .band5Gh, channel: 45, auth: .wpaPsk), -75)
    public let home46 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([173, 239, 215, 165, 22, 218]))!, band: .band5Gh, channel: 46, auth: .wpaPsk), -94)
    public let home47 = FakeWiFiScanResult(WifiInfo(ssid: "Home", bssid: MACAddress(data: Data([81, 175, 197, 57, 41, 56]))!, band: .band5Gh, channel: 47, auth: .wpaPsk), -90)
    public let wireless6 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless", bssid: MACAddress(data: Data([12, 66, 144, 65, 139, 223]))!, band: .band24Gh, channel: 6, auth: .wpa2Psk), -79)
    public let wireless40 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless", bssid: MACAddress(data: Data([59, 1, 147, 59, 231, 218]))!, band: .band5Gh, channel: 40, auth: .wpa2Psk), -88)
    public let wireless49 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless", bssid: MACAddress(data: Data([159, 199, 133, 125, 249, 132]))!, band: .band5Gh, channel: 49, auth: .wpa2Psk), -81)
    public let wireless51 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless", bssid: MACAddress(data: Data([115, 253, 44, 91, 4, 190]))!, band: .band5Gh, channel: 51, auth: .wpa2Psk), -94)
    public let wireless52 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless", bssid: MACAddress(data: Data([42, 255, 52, 97, 165, 12]))!, band: .band5Gh, channel: 52, auth: .wpa2Psk), -49)
    public let wireless54 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless", bssid: MACAddress(data: Data([144, 158, 123, 95, 225, 167]))!, band: .band5Gh, channel: 54, auth: .wpa2Psk), -92)
    public let wireless55 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless", bssid: MACAddress(data: Data([86, 69, 247, 246, 135, 32]))!, band: .band5Gh, channel: 55, auth: .wpa2Psk), -79)
    public let wifi11 = FakeWiFiScanResult(WifiInfo(ssid: "Wi-Fi", bssid: MACAddress(data: Data([202, 230, 173, 177, 177, 167]))!, band: .band24Gh, channel: 11, auth: .wpaWpa2Psk), -51)
    public let wifi36 = FakeWiFiScanResult(WifiInfo(ssid: "Wi-Fi", bssid: MACAddress(data: Data([141, 19, 166, 8, 0, 35]))!, band: .band5Gh, channel: 36, auth: .wpaWpa2Psk), -86)
    public let wifi39 = FakeWiFiScanResult(WifiInfo(ssid: "Wi-Fi", bssid: MACAddress(data: Data([251, 82, 188, 14, 233, 117]))!, band: .band5Gh, channel: 39, auth: .wpaWpa2Psk), -33)
    public let wifi40 = FakeWiFiScanResult(WifiInfo(ssid: "Wi-Fi", bssid: MACAddress(data: Data([99, 197, 92, 60, 97, 55]))!, band: .band5Gh, channel: 40, auth: .wpaWpa2Psk), -58)
    public let wifi42 = FakeWiFiScanResult(WifiInfo(ssid: "Wi-Fi", bssid: MACAddress(data: Data([67, 8, 87, 165, 160, 186]))!, band: .band5Gh, channel: 42, auth: .wpaWpa2Psk), -100)
    public let iotNetwork4 = FakeWiFiScanResult(WifiInfo(ssid: "IoT Network", bssid: MACAddress(data: Data([167, 58, 98, 234, 186, 142]))!, band: .band24Gh, channel: 4, auth: .wpa2Psk), -32)
    public let router1 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([203, 241, 97, 75, 25, 124]))!, band: .band24Gh, channel: 1, auth: .wpa2Enterprise), -30)
    public let router9 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([237, 189, 166, 48, 219, 138]))!, band: .band24Gh, channel: 9, auth: .wpa2Enterprise), -31)
    public let router11 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([116, 161, 57, 202, 141, 211]))!, band: .band24Gh, channel: 11, auth: .wpa2Enterprise), -81)
    public let router39 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([75, 230, 188, 39, 16, 239]))!, band: .band5Gh, channel: 39, auth: .wpa2Enterprise), -39)
    public let router44 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([14, 39, 148, 192, 128, 39]))!, band: .band5Gh, channel: 44, auth: .wpa2Enterprise), -66)
    public let router50 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([161, 81, 19, 227, 124, 178]))!, band: .band5Gh, channel: 50, auth: .wpa2Enterprise), -77)
    public let router51 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([4, 193, 30, 8, 10, 25]))!, band: .band5Gh, channel: 51, auth: .wpa2Enterprise), -50)
    public let router53 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([226, 252, 35, 160, 205, 158]))!, band: .band5Gh, channel: 53, auth: .wpa2Enterprise), -95)
    public let router54 = FakeWiFiScanResult(WifiInfo(ssid: "Router", bssid: MACAddress(data: Data([2, 53, 117, 140, 96, 146]))!, band: .band5Gh, channel: 54, auth: .wpa2Enterprise), -81)
    public let internet2 = FakeWiFiScanResult(WifiInfo(ssid: "Internet", bssid: MACAddress(data: Data([143, 97, 224, 106, 211, 191]))!, band: .band24Gh, channel: 2, auth: .wpa3Psk), -35)
    public let internet4 = FakeWiFiScanResult(WifiInfo(ssid: "Internet", bssid: MACAddress(data: Data([16, 3, 233, 67, 195, 0]))!, band: .band24Gh, channel: 4, auth: .wpa3Psk), -48)
    public let internet7 = FakeWiFiScanResult(WifiInfo(ssid: "Internet", bssid: MACAddress(data: Data([168, 107, 150, 4, 180, 78]))!, band: .band24Gh, channel: 7, auth: .wpa3Psk), -49)
    public let internet48 = FakeWiFiScanResult(WifiInfo(ssid: "Internet", bssid: MACAddress(data: Data([60, 150, 154, 119, 182, 228]))!, band: .band5Gh, channel: 48, auth: .wpa3Psk), -69)
    public let internet55 = FakeWiFiScanResult(WifiInfo(ssid: "Internet", bssid: MACAddress(data: Data([180, 1, 162, 128, 80, 95]))!, band: .band5Gh, channel: 55, auth: .wpa3Psk), -66)
    public let accessPoint2 = FakeWiFiScanResult(WifiInfo(ssid: "Access Point", bssid: MACAddress(data: Data([43, 152, 99, 174, 42, 97]))!, band: .band24Gh, channel: 2, auth: .wpaPsk), -78)
    public let accessPoint7 = FakeWiFiScanResult(WifiInfo(ssid: "Access Point", bssid: MACAddress(data: Data([177, 52, 191, 62, 147, 215]))!, band: .band24Gh, channel: 7, auth: .wpaPsk), -86)
    public let accessPoint36 = FakeWiFiScanResult(WifiInfo(ssid: "Access Point", bssid: MACAddress(data: Data([216, 30, 90, 63, 99, 32]))!, band: .band5Gh, channel: 36, auth: .wpaPsk), -42)
    public let accessPoint40 = FakeWiFiScanResult(WifiInfo(ssid: "Access Point", bssid: MACAddress(data: Data([42, 193, 24, 199, 244, 112]))!, band: .band5Gh, channel: 40, auth: .wpaPsk), -79)
    public let accessPoint42 = FakeWiFiScanResult(WifiInfo(ssid: "Access Point", bssid: MACAddress(data: Data([46, 68, 53, 240, 51, 76]))!, band: .band5Gh, channel: 42, auth: .wpaPsk), -95)
    public let accessPoint51 = FakeWiFiScanResult(WifiInfo(ssid: "Access Point", bssid: MACAddress(data: Data([200, 172, 63, 148, 113, 108]))!, band: .band5Gh, channel: 51, auth: .wpaPsk), -30)
    public let accessPoint56 = FakeWiFiScanResult(WifiInfo(ssid: "Access Point", bssid: MACAddress(data: Data([25, 98, 155, 55, 193, 97]))!, band: .band5Gh, channel: 56, auth: .wpaPsk), -99)
    public let wirelessNetwork3 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([28, 44, 212, 1, 11, 192]))!, band: .band24Gh, channel: 3, auth: .wpa2Psk), -83)
    public let wirelessNetwork6 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([18, 215, 40, 83, 26, 210]))!, band: .band24Gh, channel: 6, auth: .wpa2Psk), -63)
    public let wirelessNetwork37 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([254, 209, 86, 142, 15, 52]))!, band: .band5Gh, channel: 37, auth: .wpa2Psk), -33)
    public let wirelessNetwork39 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([247, 177, 123, 236, 58, 227]))!, band: .band5Gh, channel: 39, auth: .wpa2Psk), -84)
    public let wirelessNetwork41 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([68, 14, 214, 159, 215, 2]))!, band: .band5Gh, channel: 41, auth: .wpa2Psk), -48)
    public let wirelessNetwork42 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([212, 106, 212, 82, 63, 102]))!, band: .band5Gh, channel: 42, auth: .wpa2Psk), -43)
    public let wirelessNetwork52 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([238, 22, 175, 48, 194, 224]))!, band: .band5Gh, channel: 52, auth: .wpa2Psk), -32)
    public let wirelessNetwork53 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Network", bssid: MACAddress(data: Data([99, 197, 231, 150, 2, 35]))!, band: .band5Gh, channel: 53, auth: .wpa2Psk), -74)
    public let private3 = FakeWiFiScanResult(WifiInfo(ssid: "Private", bssid: MACAddress(data: Data([35, 240, 10, 214, 146, 202]))!, band: .band24Gh, channel: 3, auth: .wpaWpa2Psk), -51)
    public let private40 = FakeWiFiScanResult(WifiInfo(ssid: "Private", bssid: MACAddress(data: Data([230, 224, 15, 67, 228, 214]))!, band: .band5Gh, channel: 40, auth: .wpaWpa2Psk), -48)
    public let private46 = FakeWiFiScanResult(WifiInfo(ssid: "Private", bssid: MACAddress(data: Data([66, 27, 120, 222, 45, 208]))!, band: .band5Gh, channel: 46, auth: .wpaWpa2Psk), -94)
    public let private48 = FakeWiFiScanResult(WifiInfo(ssid: "Private", bssid: MACAddress(data: Data([63, 239, 9, 241, 77, 143]))!, band: .band5Gh, channel: 48, auth: .wpaWpa2Psk), -55)
    public let public7 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([43, 203, 45, 51, 127, 186]))!, band: .band24Gh, channel: 7, auth: .open), -74)
    public let public8 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([225, 150, 30, 223, 91, 159]))!, band: .band24Gh, channel: 8, auth: .open), -79)
    public let public37 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([142, 233, 216, 215, 210, 236]))!, band: .band5Gh, channel: 37, auth: .open), -99)
    public let public40 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([215, 127, 240, 247, 35, 209]))!, band: .band5Gh, channel: 40, auth: .open), -34)
    public let public42 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([80, 67, 6, 111, 108, 196]))!, band: .band5Gh, channel: 42, auth: .open), -47)
    public let public46 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([242, 116, 23, 114, 215, 15]))!, band: .band5Gh, channel: 46, auth: .open), -67)
    public let public49 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([135, 129, 38, 23, 107, 68]))!, band: .band5Gh, channel: 49, auth: .open), -71)
    public let public54 = FakeWiFiScanResult(WifiInfo(ssid: "Public", bssid: MACAddress(data: Data([208, 130, 249, 248, 110, 143]))!, band: .band5Gh, channel: 54, auth: .open), -45)
    public let homeNetwork10 = FakeWiFiScanResult(WifiInfo(ssid: "Home Network", bssid: MACAddress(data: Data([28, 28, 68, 192, 59, 121]))!, band: .band24Gh, channel: 10, auth: .wpa2Enterprise), -41)
    public let homeNetwork45 = FakeWiFiScanResult(WifiInfo(ssid: "Home Network", bssid: MACAddress(data: Data([154, 135, 85, 255, 24, 22]))!, band: .band5Gh, channel: 45, auth: .wpa2Enterprise), -59)
    public let homeNetwork46 = FakeWiFiScanResult(WifiInfo(ssid: "Home Network", bssid: MACAddress(data: Data([33, 194, 105, 104, 151, 104]))!, band: .band5Gh, channel: 46, auth: .wpa2Enterprise), -96)
    public let homeNetwork51 = FakeWiFiScanResult(WifiInfo(ssid: "Home Network", bssid: MACAddress(data: Data([221, 255, 13, 87, 32, 2]))!, band: .band5Gh, channel: 51, auth: .wpa2Enterprise), -45)
    public let homeNetwork54 = FakeWiFiScanResult(WifiInfo(ssid: "Home Network", bssid: MACAddress(data: Data([75, 152, 31, 200, 160, 92]))!, band: .band5Gh, channel: 54, auth: .wpa2Enterprise), -100)
    public let homeNetwork55 = FakeWiFiScanResult(WifiInfo(ssid: "Home Network", bssid: MACAddress(data: Data([194, 126, 4, 3, 228, 219]))!, band: .band5Gh, channel: 55, auth: .wpa2Enterprise), -99)
    public let office5 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([122, 166, 37, 52, 187, 151]))!, band: .band24Gh, channel: 5, auth: .wpa3Psk), -96)
    public let office7 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([169, 157, 66, 43, 136, 131]))!, band: .band24Gh, channel: 7, auth: .wpa3Psk), -63)
    public let office9 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([237, 186, 247, 92, 137, 33]))!, band: .band24Gh, channel: 9, auth: .wpa3Psk), -49)
    public let office41 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([159, 238, 103, 62, 127, 207]))!, band: .band5Gh, channel: 41, auth: .wpa3Psk), -83)
    public let office43 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([16, 78, 235, 205, 48, 113]))!, band: .band5Gh, channel: 43, auth: .wpa3Psk), -65)
    public let office47 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([58, 85, 153, 106, 117, 70]))!, band: .band5Gh, channel: 47, auth: .wpa3Psk), -68)
    public let office48 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([38, 254, 146, 201, 203, 169]))!, band: .band5Gh, channel: 48, auth: .wpa3Psk), -79)
    public let office49 = FakeWiFiScanResult(WifiInfo(ssid: "Office", bssid: MACAddress(data: Data([11, 36, 182, 219, 7, 195]))!, band: .band5Gh, channel: 49, auth: .wpa3Psk), -93)
    public let guest2 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([48, 138, 15, 225, 129, 225]))!, band: .band24Gh, channel: 2, auth: .open), -54)
    public let guest3 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([192, 157, 61, 154, 166, 127]))!, band: .band24Gh, channel: 3, auth: .open), -77)
    public let guest6 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([181, 82, 83, 95, 248, 232]))!, band: .band24Gh, channel: 6, auth: .open), -53)
    public let guest36 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([25, 197, 185, 194, 25, 240]))!, band: .band5Gh, channel: 36, auth: .open), -95)
    public let guest38 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([19, 59, 133, 53, 126, 208]))!, band: .band5Gh, channel: 38, auth: .open), -56)
    public let guest43 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([113, 242, 104, 64, 145, 173]))!, band: .band5Gh, channel: 43, auth: .open), -45)
    public let guest47 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([115, 123, 181, 147, 98, 69]))!, band: .band5Gh, channel: 47, auth: .open), -56)
    public let guest54 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([189, 176, 153, 23, 26, 125]))!, band: .band5Gh, channel: 54, auth: .open), -48)
    public let guest56 = FakeWiFiScanResult(WifiInfo(ssid: "Guest", bssid: MACAddress(data: Data([65, 255, 146, 210, 225, 118]))!, band: .band5Gh, channel: 56, auth: .open), -81)
    public let freeWiFi1 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([23, 52, 237, 133, 181, 1]))!, band: .band24Gh, channel: 1, auth: .open), -36)
    public let freeWiFi3 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([193, 145, 67, 58, 159, 2]))!, band: .band24Gh, channel: 3, auth: .open), -38)
    public let freeWiFi9 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([37, 40, 47, 156, 192, 198]))!, band: .band24Gh, channel: 9, auth: .open), -30)
    public let freeWiFi40 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([0, 11, 61, 173, 42, 30]))!, band: .band5Gh, channel: 40, auth: .open), -42)
    public let freeWiFi43 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([69, 88, 102, 197, 158, 137]))!, band: .band5Gh, channel: 43, auth: .open), -88)
    public let freeWiFi44 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([68, 237, 164, 123, 164, 85]))!, band: .band5Gh, channel: 44, auth: .open), -56)
    public let freeWiFi47 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([13, 212, 241, 144, 140, 170]))!, band: .band5Gh, channel: 47, auth: .open), -32)
    public let freeWiFi48 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([94, 222, 194, 193, 23, 79]))!, band: .band5Gh, channel: 48, auth: .open), -35)
    public let freeWiFi56 = FakeWiFiScanResult(WifiInfo(ssid: "Free Wi Fi", bssid: MACAddress(data: Data([182, 155, 52, 219, 167, 216]))!, band: .band5Gh, channel: 56, auth: .open), -86)
    public let hotspot1 = FakeWiFiScanResult(WifiInfo(ssid: "Hotspot", bssid: MACAddress(data: Data([216, 98, 217, 244, 38, 24]))!, band: .band24Gh, channel: 1, auth: .open), -90)
    public let hotspot37 = FakeWiFiScanResult(WifiInfo(ssid: "Hotspot", bssid: MACAddress(data: Data([143, 206, 38, 57, 189, 210]))!, band: .band5Gh, channel: 37, auth: .open), -36)
    public let hotspot44 = FakeWiFiScanResult(WifiInfo(ssid: "Hotspot", bssid: MACAddress(data: Data([135, 210, 243, 55, 6, 112]))!, band: .band5Gh, channel: 44, auth: .open), -98)
    public let hotspot52 = FakeWiFiScanResult(WifiInfo(ssid: "Hotspot", bssid: MACAddress(data: Data([131, 164, 162, 152, 181, 124]))!, band: .band5Gh, channel: 52, auth: .open), -89)
    public let hotspot55 = FakeWiFiScanResult(WifiInfo(ssid: "Hotspot", bssid: MACAddress(data: Data([101, 189, 151, 208, 1, 112]))!, band: .band5Gh, channel: 55, auth: .open), -90)
    public let wirelessAccessPoint2 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Access Point", bssid: MACAddress(data: Data([223, 190, 40, 170, 231, 198]))!, band: .band24Gh, channel: 2, auth: .wpaPsk), -60)
    public let wirelessAccessPoint37 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Access Point", bssid: MACAddress(data: Data([130, 18, 30, 17, 29, 100]))!, band: .band5Gh, channel: 37, auth: .wpaPsk), -87)
    public let wirelessAccessPoint40 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Access Point", bssid: MACAddress(data: Data([107, 135, 35, 122, 254, 208]))!, band: .band5Gh, channel: 40, auth: .wpaPsk), -55)
    public let wirelessAccessPoint42 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Access Point", bssid: MACAddress(data: Data([245, 216, 214, 43, 139, 101]))!, band: .band5Gh, channel: 42, auth: .wpaPsk), -89)
    public let wirelessAccessPoint44 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Access Point", bssid: MACAddress(data: Data([124, 216, 244, 122, 10, 243]))!, band: .band5Gh, channel: 44, auth: .wpaPsk), -64)
    public let wirelessAccessPoint53 = FakeWiFiScanResult(WifiInfo(ssid: "Wireless Access Point", bssid: MACAddress(data: Data([158, 64, 223, 103, 123, 216]))!, band: .band5Gh, channel: 53, auth: .wpaPsk), -32)
    public let guestWiFi2 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([70, 85, 228, 193, 71, 134]))!, band: .band24Gh, channel: 2, auth: .open), -51)
    public let guestWiFi3 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([20, 55, 138, 244, 124, 132]))!, band: .band24Gh, channel: 3, auth: .open), -54)
    public let guestWiFi10 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([168, 32, 18, 253, 100, 47]))!, band: .band24Gh, channel: 10, auth: .open), -84)
    public let guestWiFi41 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([23, 27, 219, 111, 242, 212]))!, band: .band5Gh, channel: 41, auth: .open), -74)
    public let guestWiFi45 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([45, 68, 190, 130, 9, 146]))!, band: .band5Gh, channel: 45, auth: .open), -90)
    public let guestWiFi47 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([162, 136, 251, 205, 95, 134]))!, band: .band5Gh, channel: 47, auth: .open), -67)
    public let guestWiFi49 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([218, 158, 43, 77, 92, 28]))!, band: .band5Gh, channel: 49, auth: .open), -99)
    public let guestWiFi50 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([40, 95, 4, 159, 154, 27]))!, band: .band5Gh, channel: 50, auth: .open), -91)
    public let guestWiFi54 = FakeWiFiScanResult(WifiInfo(ssid: "Guest Wi Fi", bssid: MACAddress(data: Data([17, 148, 54, 208, 78, 197]))!, band: .band5Gh, channel: 54, auth: .open), -40)
    public let cafe2 = FakeWiFiScanResult(WifiInfo(ssid: "Cafe", bssid: MACAddress(data: Data([166, 142, 209, 52, 65, 22]))!, band: .band24Gh, channel: 2, auth: .open), -71)
    public let cafe7 = FakeWiFiScanResult(WifiInfo(ssid: "Cafe", bssid: MACAddress(data: Data([212, 217, 243, 163, 76, 240]))!, band: .band24Gh, channel: 7, auth: .open), -83)
    public let cafe43 = FakeWiFiScanResult(WifiInfo(ssid: "Cafe", bssid: MACAddress(data: Data([174, 192, 123, 241, 89, 194]))!, band: .band5Gh, channel: 43, auth: .open), -71)
    public let cafe47 = FakeWiFiScanResult(WifiInfo(ssid: "Cafe", bssid: MACAddress(data: Data([220, 38, 85, 246, 224, 23]))!, band: .band5Gh, channel: 47, auth: .open), -61)
    public let cafe55 = FakeWiFiScanResult(WifiInfo(ssid: "Cafe", bssid: MACAddress(data: Data([90, 249, 179, 98, 242, 88]))!, band: .band5Gh, channel: 55, auth: .open), -54)
    public let restaurant2 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([173, 57, 183, 33, 16, 237]))!, band: .band24Gh, channel: 2, auth: .open), -70)
    public let restaurant4 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([251, 3, 21, 76, 136, 87]))!, band: .band24Gh, channel: 4, auth: .open), -62)
    public let restaurant7 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([15, 74, 36, 17, 205, 131]))!, band: .band24Gh, channel: 7, auth: .open), -70)
    public let restaurant39 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([81, 28, 146, 101, 16, 244]))!, band: .band5Gh, channel: 39, auth: .open), -77)
    public let restaurant41 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([23, 56, 3, 133, 26, 1]))!, band: .band5Gh, channel: 41, auth: .open), -97)
    public let restaurant43 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([67, 229, 118, 91, 155, 117]))!, band: .band5Gh, channel: 43, auth: .open), -66)
    public let restaurant53 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([120, 4, 144, 198, 84, 148]))!, band: .band5Gh, channel: 53, auth: .open), -51)
    public let restaurant54 = FakeWiFiScanResult(WifiInfo(ssid: "Restaurant", bssid: MACAddress(data: Data([154, 112, 98, 137, 214, 9]))!, band: .band5Gh, channel: 54, auth: .open), -97)
    public let hotel6 = FakeWiFiScanResult(WifiInfo(ssid: "Hotel", bssid: MACAddress(data: Data([25, 154, 88, 12, 140, 114]))!, band: .band24Gh, channel: 6, auth: .wpa2Psk), -43)
    public let hotel41 = FakeWiFiScanResult(WifiInfo(ssid: "Hotel", bssid: MACAddress(data: Data([143, 195, 51, 70, 8, 231]))!, band: .band5Gh, channel: 41, auth: .wpa2Psk), -35)
    public let hotel45 = FakeWiFiScanResult(WifiInfo(ssid: "Hotel", bssid: MACAddress(data: Data([67, 179, 220, 173, 92, 132]))!, band: .band5Gh, channel: 45, auth: .wpa2Psk), -35)
    public let hotel46 = FakeWiFiScanResult(WifiInfo(ssid: "Hotel", bssid: MACAddress(data: Data([110, 123, 187, 121, 238, 233]))!, band: .band5Gh, channel: 46, auth: .wpa2Psk), -60)

    public var allNetworks: [FakeWiFiScanResult] { [home6, home7, home11, home37, home39, home45, home46, home47, wireless6, wireless40, wireless49, wireless51, wireless52, wireless54, wireless55, wifi11, wifi36, wifi39, wifi40, wifi42, iotNetwork4, router1, router9, router11, router39, router44, router50, router51, router53, router54, internet2, internet4, internet7, internet48, internet55, accessPoint2, accessPoint7, accessPoint36, accessPoint40, accessPoint42, accessPoint51, accessPoint56, wirelessNetwork3, wirelessNetwork6, wirelessNetwork37, wirelessNetwork39, wirelessNetwork41, wirelessNetwork42, wirelessNetwork52, wirelessNetwork53, private3, private40, private46, private48, public7, public8, public37, public40, public42, public46, public49, public54, homeNetwork10, homeNetwork45, homeNetwork46, homeNetwork51, homeNetwork54, homeNetwork55, office5, office7, office9, office41, office43, office47, office48, office49, guest2, guest3, guest6, guest36, guest38, guest43, guest47, guest54, guest56, freeWiFi1, freeWiFi3, freeWiFi9, freeWiFi40, freeWiFi43, freeWiFi44, freeWiFi47, freeWiFi48, freeWiFi56, hotspot1, hotspot37, hotspot44, hotspot52, hotspot55, wirelessAccessPoint2, wirelessAccessPoint37, wirelessAccessPoint40, wirelessAccessPoint42, wirelessAccessPoint44, wirelessAccessPoint53, guestWiFi2, guestWiFi3, guestWiFi10, guestWiFi41, guestWiFi45, guestWiFi47, guestWiFi49, guestWiFi50, guestWiFi54, cafe2, cafe7, cafe43, cafe47, cafe55, restaurant2, restaurant4, restaurant7, restaurant39, restaurant41, restaurant43, restaurant53, restaurant54, hotel6, hotel41, hotel45, hotel46] }
}