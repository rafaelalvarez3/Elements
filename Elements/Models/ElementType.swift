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
    case postTransitionMetal
    case metalloid
    case halogen
    case nobleGas
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
        case .postTransitionMetal:
            return .mint
        case .metalloid:
            return .pink
        case .halogen:
            return .green
        case .nobleGas:
            return .white
        case .lanthanoid:
            return .yellow
        case .actinoid:
            return .cyan
        
        }
    }
}
