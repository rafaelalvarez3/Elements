//
//  Element.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/10/24.
//

import Foundation
import SwiftUI

struct Element: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var atomicMass: Double
    var symbol: String
    var elementType: String
    var yearDiscovered: Int
    var description: String
}
