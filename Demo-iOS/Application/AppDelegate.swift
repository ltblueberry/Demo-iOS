//
//  AppDelegate.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupApplication(application: application)
        setupWindow()
        return true
    }

    // Setup Launch Window
    private func setupWindow() {
        let launchConfigurator = LaunchModuleConfigurator()
        let launchScreen = launchConfigurator.configure()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = launchScreen
        window?.makeKeyAndVisible()
    }

    // Configure application with tools
    private func setupApplication(application _: UIApplication) {
        // For example, configure Firebase here...
        // FirebaseApp.configure()

        // Add seeds to local DB
        if !UserDefaults.standard.bool(forKey: UserDefaultsKeys.dbSeedsAdded.rawValue) {
            let seedService = RealmSeedService()
            seedService.fillDatabase()
        }
    }
}
