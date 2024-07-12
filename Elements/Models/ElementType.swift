//
//  ElementType.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/12/24.
//

import Foundation
import SwiftUI

enum ElementType {
    case alkaliMetal
    case alkalineEarthMetal
    case transitionMetal
    case otherMetal
    case otherNonMetal
    case halogen
    case nobleGas
    case rareEarth
    case lanthanoid
    case actinoid
    
    var typeColor: Color {
        switch self {
        case .alkaliMetal:
            return .orange
        case .alkalineEarthMetal:
            return .red
        case .transitionMetal:
            return .brown
        case .otherMetal:
            return .mint
        case .otherNonMetal:
            return .pink
        case .halogen:
            return .green
        case .nobleGas:
            return .white
        case .rareEarth, .lanthanoid:
            return .yellow
        case .actinoid:
            return .cyan
        
        }
    }
}
