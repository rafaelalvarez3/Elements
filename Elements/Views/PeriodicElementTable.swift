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
                GridRow {
                    PeriodicElementCell(periodicElement: modelData.periodicElements[0])
                    ForEach(1..<17) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 100, height: 100)
                            .opacity(0)
                    }
                    PeriodicElementCell(periodicElement: modelData.periodicElements[1])
                }
                GridRow {
                    PeriodicElementCell(periodicElement: modelData.periodicElements[2])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[3])
                    ForEach(1..<11) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 100, height: 100)
                            .opacity(0)
                    }
                    PeriodicElementCell(periodicElement: modelData.periodicElements[4])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[5])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[6])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[7])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[8])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[9])
                }
                GridRow {
                    PeriodicElementCell(periodicElement: modelData.periodicElements[10])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[11])
                    ForEach(1..<11) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 100, height: 100)
                            .opacity(0)
                    }
                    PeriodicElementCell(periodicElement: modelData.periodicElements[12])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[13])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[14])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[15])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[16])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[17])
                }
                GridRow {
                    ForEach(18..<36) { atomicNumber in
                        PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
                }
                GridRow {
                    ForEach(36..<54) { atomicNumber in
                        PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
                }
                GridRow {
                    PeriodicElementCell(periodicElement: modelData.periodicElements[54])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[55])
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.gray)
                        .frame(width: 100, height: 100)
                        .opacity(0)
                    ForEach(71..<86) { atomicNumber in
                        PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
                }
                GridRow {
                    PeriodicElementCell(periodicElement: modelData.periodicElements[86])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[87])
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.gray)
                        .frame(width: 100, height: 100)
                        .opacity(0)
                    ForEach(103..<118) { atomicNumber in
                        PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
                }
            }
            Spacer()
                .frame(height: 75)
            Grid {
                GridRow {
                    ForEach(56..<71) { atomicNumber in
                        PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
                }
                GridRow {
                    ForEach(88..<103) { atomicNumber in
                        PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
                }
                
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
