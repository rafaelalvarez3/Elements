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
            //HStack {
                //ForEach(modelData.periodicElements) { element in
                    //PeriodicElementCell(periodicElement: element)
                //}
            //}
            
            Grid {
                ForEach(0..<7) { _ in
                    GridRow {
                        ForEach(0..<18) { _ in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.gray)
                                .frame(width: 100, height: 100)
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    let periodicElements = ModelData().periodicElements
    return Group {
        PeriodicElementTable()
            .environment(ModelData())
    }
    
}
