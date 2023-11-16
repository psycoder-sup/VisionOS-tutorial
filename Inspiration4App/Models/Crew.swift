//
//  Crew.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/16/23.
//

import Foundation

enum Crew: String, Identifiable, CaseIterable, Equatable {
    case jared, haley, chirs, sian
    
    var id: Self { self }
    
    var fullName: String {
        switch self {
        case .jared:
            "Jared Isaacman"
        case .haley:
            "Haley Arcenneaux"
        case .chirs:
            "Chris Sembroski"
        case .sian:
            "Dr. Sian Proctor"
        }
    }
}

