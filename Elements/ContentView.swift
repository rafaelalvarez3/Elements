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
            Image(systemName: "hand.wave")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.largeTitle)
                .padding()
            Text("Hello, Friend!")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
