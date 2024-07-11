//
//  PeriodicElementRow.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/11/24.
//

import SwiftUI

struct PeriodicElementRow: View {
    var periodicElement: PeriodicElement
    
    var body: some View {
        HStack {
            Text(periodicElement.name)
                .font(.largeTitle)
                .padding()
            Spacer()
            Image(systemName: "arrow.forward")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
        }
    }
}

#Preview("Elements") {
    let periodicElements = ModelData().periodicElements
    return Group {
        PeriodicElementRow(periodicElement: periodicElements[0])
        PeriodicElementRow(periodicElement: periodicElements[1])
        PeriodicElementRow(periodicElement: periodicElements[2])
        PeriodicElementRow(periodicElement: periodicElements[3])
    }
}
