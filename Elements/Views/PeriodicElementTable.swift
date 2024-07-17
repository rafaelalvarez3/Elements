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
            Grid {
                
                /* Atomic Numbers 1 to 2 */
                GridRow {
                    
                    /* Atomic Number 1 */
                    PeriodicElementCell(periodicElement: modelData.periodicElements[0])
                    
                    /* 16 empty cells */
                    ForEach(0..<16) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 100, height: 100)
                            .opacity(0)
                    }
                    
                    /* Atomic Number 2 */
                    PeriodicElementCell(periodicElement: modelData.periodicElements[1])
                    
                }
                
                /* Atomic Numbers 3 to 10 */
                GridRow {
                    
                    /* Atomic Numbers 3 to 4 */
                    PeriodicElementCell(periodicElement: modelData.periodicElements[2])
                    PeriodicElementCell(periodicElement: modelData.periodicElements[3])
                    
                    /* 10 empty cells */
                    ForEach(0..<10) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 100, height: 100)
                            .opacity(0)
                    }
                    /* Atomic Numbers 5 to 10 */
                    ForEach(4..<10) { atomicNumber in
                            PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
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
                    ForEach(12..<18) { atomicNumber in
                        PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                    }
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
