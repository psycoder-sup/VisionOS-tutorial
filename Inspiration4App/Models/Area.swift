//
//  Area.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/16/23.
//

/// Going to contain whole information about `Area`

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable{
    case astronauts, equipment, mission
    var id : Self { self }
    var name : String { rawValue.lowercased() }
    
    var title : String {
        switch self {
        case.astronauts:
            "Inspiration 4 mission crew members..."
        case.equipment:
            "Inspriation 4 mission equipment..."
        case.mission:
            "Inspiration 4 mission trailer..."
        }
    }
}
