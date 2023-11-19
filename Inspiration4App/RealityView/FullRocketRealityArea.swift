//
//  FullRocketRealityArea.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/19/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    @State private var audioController: AudioPlaybackController?
    var body: some View {
        RealityView { content in
            guard let entity = try? await  Entity(named: "Immersive", in: realityKitContentBundle) else {
                fatalError("Unable to lead scene model")
            }
            let ambientAudioEntity = entity.findEntity(named: "AmbientAudio")
            
            guard let resource = try? await AudioFileResource(named: "/Root/Space_wav", from: "Immersive.usda", in: realityKitContentBundle) else{
                fatalError("Unable to find sapce.wav file")
            }
            audioController = ambientAudioEntity?.prepareAudio(resource)
            audioController?.play()
            content.add(entity)
            
        }
        .onDisappear(perform: {
            audioController?.stop()
        })
    }
}

#Preview {
    FullRocketRealityArea()
        .environment(ViewModel())
}
