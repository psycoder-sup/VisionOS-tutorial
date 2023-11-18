//
//  Crew.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/16/23.
//

import Foundation

enum Crew: String, Identifiable, CaseIterable, Equatable {
    case jared, haley, chirs, sian
    var name: String { rawValue.lowercased() }
    
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
    
    var about: String {
        switch self {
        case .jared:
            "Jared Isaacman is the founder and CEO of Shift4 Payments (NYSE: FOUR), the leader in integrated payment processing solutions."
        case .haley:
            "When Hayley was 10 years old, one of her knees began to ache. Her doctor thought it was just a sprain, but a few months later, tests revealed Hayley suffered from osteosarcoma, a type of bone cancer."
        case .chirs:
            "Chris Sembroski grew up with a natural curiosity about outer space. Stargazing late at night on the roof of his high school and launching high-powered model rockets in college cemented this passion. As a U.S."
        case .sian:
            "Dr. Sian Proctor is a geoscientist, explorer, and science communication specialist with a lifelong passion for space exploration."
        }
    }
}

