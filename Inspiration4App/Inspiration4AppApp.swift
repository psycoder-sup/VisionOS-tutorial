//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/16/23.
//

import SwiftUI

@main
struct Inspiration4AppApp: App {
    /// Inside of the body we define,
    /// Immersive, Full space, Shared space, etc.
    /// Also other proterties
    var body: some Scene {
        WindowGroup {
            Areas()
        }
//        .windowStyle(.plain)
        /// We can control the size
//        .defaultSize(CGSize(width: 200, height: 150))
    }

}
