// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    func betaLane() {
        desc("Increment build number, build app and deploy to TestFlight")
        
        incrementBuildNumber()
        buildIosApp(xcodebuildFormatter: "xcpretty")
        
        let keyId = environmentVariable(get: "ASC_KEY_ID")
        let issuerId = environmentVariable(get: "ASC_ISSUER_ID")
        let keyContent = environmentVariable(get: "ASC_PRIVATE_KEY")
        
        desc("loaded keys: \(keyId), issuer: \(issuerId), keyContent: \(keyContent)")
        
        appStoreConnectApiKey(keyId: keyId, issuerId: issuerId, keyContent: OptionalConfigValue(stringLiteral: keyContent), isKeyContentBase64: true)
        uploadToTestflight()
    }
}
