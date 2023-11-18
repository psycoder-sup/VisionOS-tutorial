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
            
            Text("Welcome To The Inspiration 4 Mission By SpaceX")
                .monospaced()
                .font(.system(size:40, weight: .bold))
                .padding(.top, 250)
            
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .monospaced()
                            .font(.system(size:40, weight: .bold))
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                }
            }
            .background()
            {
                
            }
            
//            NavigationLink {
//                Text("Hello World 1 Nav 1")
//            } label: {
//                Label("Hola 1", systemImage: "chevron.right")
//            }
//            NavigationLink {
//                Text("Hello World 2 Nav 2")
//            } label: {
//                Label("Hola 2", systemImage: "chevron.right")
//            }
//            NavigationLink {
//                Text("Hello World 3 Nav 3")
//            } label : {
//                Label("Hola 3", systemImage: "chevron.right")
//            }
            
            
        }
    }
}

//#Preview {
//    NavigationToAreas()
//}
