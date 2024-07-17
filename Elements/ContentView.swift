//
//  ContentView.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PeriodicElementTable()
                .padding()
            PeriodicElementList()
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
