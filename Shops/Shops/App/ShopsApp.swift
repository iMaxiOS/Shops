//
//  ShopsApp.swift
//  Shops
//
//  Created by Maxim Granchenko on 18.01.2021.
//

import SwiftUI

@main
struct ShopsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
