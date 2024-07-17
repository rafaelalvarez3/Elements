//
//  PeriodicElementTable.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/12/24.
//

import SwiftUI

struct PeriodicElementTable: View {
    @Environment(ModelData.self) var modelData
    
    
    var body: some View {
        VStack {
            HStack {
                ForEach(modelData.periodicElements) { element in
                    PeriodicElementCell(periodicElement: element)
                }
            }
            
            Grid {

            }
            
        }
    }
}

#Preview {
    return Group {
        PeriodicElementTable()
            .environment(ModelData())
    }
    
}
