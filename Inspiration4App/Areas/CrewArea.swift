//
//  CrewArea.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/18/23.
//

import SwiftUI

struct CrewArea: View {
    var body: some View {
        HStack {
            ForEach(Crew.allCases){ crew in
                VStack(alignment: .leading){
                    Image("crew-\(crew.name)")
                        .resizable()
                        .frame(width: 180, height: 200)
                    Text(crew.fullName)
                        .font(.system(size: 22, weight: .bold))
                }
            }
        }
    }
}
