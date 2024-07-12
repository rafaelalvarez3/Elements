/*
 *
 * This is the data structure for the individual elements. JSON data of the elements is loaded in ModelData.swift.
 * The id is the atomic number.
 * 
 * If you would like to add images, you can use SwiftUI for Apple or Adwaita for Gnome on Linux.
 * SwiftUI: https://developer.apple.com/xcode/swiftui/
 * Adwaita for Swift: https://github.com/AparokshaUI/adwaita-swift
 *
 * Enjoy!
 *
 * Created by Rafael Alvarez on 7/10/24.
 *
 */

import Foundation

struct PeriodicElement: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var atomicMass: Float
    var symbol: String
    var elementType: String
    var yearDiscovered: Int
    var description: String
}
