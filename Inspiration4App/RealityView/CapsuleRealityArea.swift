//
//  CapsuleRealityView.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/19/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct CapsuleRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await  Entity(named: "Scene", in: realityKitContentBundle) else {
                fatalError("Unable to lead scene model")
            }
            
            content.add(entity)
            
        }
    }
}

#Preview {
    CapsuleRealityArea()
        .environment(ViewModel())
}
