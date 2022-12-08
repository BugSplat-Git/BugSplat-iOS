//
//  BugsplatTesterApp.swift
//  BugsplatTester
//
//  Created by Geoff Raeder on 6/13/21.
//

import SwiftUI
import Bugsplat

@main
struct BugsplatTesterApp: App {

    private let bugsplat = BugsplatInitializer()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class BugsplatInitializer: NSObject, BugsplatStartupManagerDelegate {

    override init() {
        super.init()
        BugsplatStartupManager.shared().start()
        BugsplatStartupManager.shared().delegate = self
    }

    // MARK: BugsplatStartupManagerDelegate

    func bugsplatWillSendCrashReport(_ bugsplatStartupManager: BugsplatStartupManager) {
        print("\(#file) - \(#function)")
    }

    func bugsplatWillSendCrashReportsAlways(_ bugsplatStartupManager: BugsplatStartupManager) {
        print("\(#file) - \(#function)")
    }

    func bugsplatDidFinishSendingCrashReport(_ bugsplatStartupManager: BugsplatStartupManager) {
        print("\(#file) - \(#function)")
    }

    func bugsplatWillCancelSendingCrashReport(_ bugsplatStartupManager: BugsplatStartupManager) {
        print("\(#file) - \(#function)")
    }

    func bugsplatWillShowSubmitCrashReportAlert(_ bugsplatStartupManager: BugsplatStartupManager) {
        print("\(#file) - \(#function)")
    }
    
    func bugsplat(_ bugsplatStartupManager: BugsplatStartupManager, didFailWithError error: Error) {
        print("\(#file) - \(#function)")
    }
}
