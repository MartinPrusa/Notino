//
//  notino_iosApp.swift
//  notino-ios
//
//  Created by Martin Prusa on 05.12.2021.
//

import SwiftUI
let appCore = AppCore()

@main
struct notino_iosApp: App {
    var body: some Scene {
        WindowGroup {
            DashboardConfigurator().createView()
        }
    }
}
