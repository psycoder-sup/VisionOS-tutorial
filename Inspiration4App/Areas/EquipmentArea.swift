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
                Image("e")
            }
        }
    }
}

#Preview {
    EquipmentArea()
}
