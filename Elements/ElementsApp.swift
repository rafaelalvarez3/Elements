//
//  ElementsApp.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/10/24.
//

import SwiftUI

@main
struct ElementsApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
