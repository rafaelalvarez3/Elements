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
                .padding()
        }
    }
}

#Preview("Elements") {
    let periodicElements = ModelData().periodicElements
    return Group {
        PeriodicElementRow(periodicElement: periodicElements[0])
    }
}
