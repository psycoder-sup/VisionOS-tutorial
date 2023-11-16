//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/16/23.
//

import SwiftUI

@main
struct Inspiration4AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
