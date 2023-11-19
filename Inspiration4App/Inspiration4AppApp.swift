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
    @State private var model = ViewModel()
    var body: some Scene {
        WindowGroup {
            Areas()
                .environment(model)
        }
//        .windowStyle(.plain)
        /// We can control the size
//        .defaultSize(CGSize(width: 200, height: 150))
        
        WindowGroup(id: "CapsuleRealityArea") {
            CapsuleRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        WindowGroup(id: "FullRocketREalityArea") {
            FullRocketRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }

}
