//
//  NevigationToAreas.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/17/23.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            NavigationLink {
                Text("Hello World 1 Nav 1")
            } label: {
                Label("Hola 1", systemImage: "chevron.right")
            }
            NavigationLink {
                Text("Hello World 2 Nav 2")
            } label: {
                Label("Hola 2", systemImage: "chevron.right")
            }
            NavigationLink {
                Text("Hello World 3 Nav 3")
            } label : {
                Label("Hola 3", systemImage: "chevron.right")
            }
            
        }
    }
}

//#Preview {
//    NevigationToAreas()
//}
