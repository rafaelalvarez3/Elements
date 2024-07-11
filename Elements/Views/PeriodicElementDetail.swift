//
//  PeriodicElementDetail.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/11/24.
//

import SwiftUI

struct PeriodicElementDetail: View {
    var periodicElement: PeriodicElement
    
    var body: some View {
        VStack {
            HStack {
                Text("Element Name:")
                    .font(.title)
                    .padding()
                Spacer()
                Text(periodicElement.name)
                    .font(.largeTitle)
                    .padding()
            }
            HStack {
                Text("Atomic Number:")
                    .font(.title)
                    .padding()
                Spacer()
                Text("\(periodicElement.id)")
                    .font(.title)
                    .padding()
            }
            HStack {
                Text("Atomic Mass:")
                    .font(.title)
                    .padding()
                Spacer()
                Text("\(periodicElement.atomicMass)")
                    .font(.title)
                    .padding()
            }
            HStack {
                Text("Symbol:")
                    .font(.title)
                    .padding()
                Spacer()
                Text(periodicElement.symbol)
                    .font(.title)
                    .padding()
            }
            HStack {
                Text("Element Type:")
                    .font(.title)
                    .padding()
                Spacer()
                Text(periodicElement.elementType)
                    .font(.title)
                    .padding()
            }
            HStack {
                Text("Year Discovered:")
                    .font(.title)
                    .padding()
                Spacer()
                Text(String(periodicElement.yearDiscovered))
                    .font(.title)
                    .padding()
            }
            HStack {
                Text("Description:")
                    .font(.title)
                    .padding()
                Spacer()
                Text(periodicElement.description)
                    .font(.title)
                    .padding()
            }
        }
    }
}

#Preview("Elements") {
    let periodicElements = ModelData().periodicElements
    return Group {
        PeriodicElementDetail(periodicElement: periodicElements[0])
    }
}
