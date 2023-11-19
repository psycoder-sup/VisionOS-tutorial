//
//  SwiftUIView.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/18/23.
//

import SwiftUI

// Use the environment HERE!
struct EquipmentArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        @Bindable var model = model
        
        HStack {
            VStack{
                Image("equipment-capsule")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                Toggle(model.isShowingRocketCapsule ? "Hide Roket Capsule (volumetric)" : "Show Roket Capsule (voulmetric)", isOn: $model.isShowingRocketCapsule)
                    .onChange(of: model.isShowingRocketCapsule) { _, isShowing in
                        if isShowing {
                            openWindow(id: model.capsuleRealityAreaId)
                        } else {
                            dismissWindow(id: model.capsuleRealityAreaId)
                        }
                    }
                    .toggleStyle(.button)
                    .padding(20)
            }.glassBackgroundEffect()
            
            VStack{
                Image("equipment-fullrocket")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                Toggle(model.isShowingFullRocket ? "Hide Full Rocket (volumetric)" : "Show Full Roket (voulmetric)", isOn: $model.isShowingFullRocket)
                    .onChange(of: model.isShowingFullRocket) { _, isShowing in
                        if isShowing {
//                            await openImmersiveSpace(id: model.fullRocketRealityArea)
                        } else {
                            // dismissWindow volumetric
                        }
                    }
                    .toggleStyle(.button)
                    .padding(20)
            }.glassBackgroundEffect()
            
        }
    }
}
//
//#Preview {
//    EquipmentArea()
//        .environment(ViewModel())
//}
