//
//  CryptoApp.swift
//  Crypto
//
//  Created by dofxmine on 26.03.2025.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
        }
    }
}
