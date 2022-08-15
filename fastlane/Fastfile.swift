// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

let appIdKey = "ASC_KEY_ID"
let issuerIdKey = "ASC_ISSUER_ID"
let privateKeyId = "ASC_PRIVATE_KEY"

class Fastfile: LaneFile {
    func loadAPIKey() {
        desc("Load the ASC API key")

        let keyId = environmentVariable(get: "ASC_KEY_ID")
        let issuerId = environmentVariable(get: "ASC_ISSUER_ID")
        let keyContent = environmentVariable(get: "ASC_PRIVATE_KEY")
        
        appStoreConnectApiKey(
            keyId: keyId,
            issuerId: issuerId,
            keyContent: OptionalConfigValue(stringLiteral: keyContent),
            isKeyContentBase64: true,
            inHouse: false
        )
    }


    
    func prepareSignIn() {
        
    }
    
    func betaLane() {
        desc("Increment build number, build app and deploy to TestFlight")
        
//        incrementBuildNumber()

        let keyId = environmentVariable(get: "ASC_KEY_ID")
        let issuerId = environmentVariable(get: "ASC_ISSUER_ID")
        let keyContent = environmentVariable(get: "ASC_PRIVATE_KEY")

        desc("loaded keys: \(keyId), issuer: \(issuerId), keyContent: \(keyContent)")

        automaticCodeSigning(
                path: "nRF-Wi-Fi-Provisioner.xcodeproj",
                useAutomaticSigning: false
        )

        let keychainName = environmentVariable(get: "TEMP_KEYCHAIN_USER")
        let keychainPassword = environmentVariable(get: "TEMP_KEYCHAIN_PASSWORD")
        createTmpKeychain(name: keychainName, password: keychainPassword)
        loadAPIKey()
        match(
            keychainName: keychainName,
            keychainPassword: OptionalConfigValue(stringLiteral: keychainPassword)
        )

//        buildIosApp(xcodebuildFormatter: "xcpretty")
        
        
        
        gym(xcodebuildFormatter: "xcpretty")
        
        uploadToTestflight()

        automaticCodeSigning(
                path: "nRF-Wi-Fi-Provisioner.xcodeproj",
                useAutomaticSigning: true
        )


//        appStoreConnectApiKey(keyId: keyId, issuerId: issuerId, keyContent: OptionalConfigValue(stringLiteral: keyContent), isKeyContentBase64: true)

    }
}

extension Fastfile {
    func createTmpKeychain(name: String, password: String) {
        desc("Create a keychain")
        let filePath = "~/Library/Keychains/\(name)-db"
        if FileManager.default.fileExists(atPath: filePath) {
            deleteKeychain(keychainPath: OptionalConfigValue(stringLiteral: filePath))
        }
        createKeychain(name: OptionalConfigValue(stringLiteral: name), password: password, unlock: false, timeout: 0)

    }
}
