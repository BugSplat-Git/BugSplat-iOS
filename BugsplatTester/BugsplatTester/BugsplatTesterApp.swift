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

    init() {
        BugsplatStartupManager.shared().start()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
