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
        NavigationStack {
            VStack {
                Grid {
                    GridRow { /* Atomic Numbers 1 to 2 */
                        generateCells(1, 1)
                        emptyCells(16)
                        generateCells(2, 2)
                    }
                    GridRow { /* Atomic Numbers 3 to 10 */
                        generateCells(3, 4)
                        emptyCells(10)
                        generateCells(5, 10)
                    }
                    GridRow { /* Atomic Numbers 11 to 18 */
                        generateCells(11, 12)
                        emptyCells(10)
                        generateCells(13, 18)
                    }
                    GridRow { /* Atomic Numbers 19 to 36 */
                        generateCells(19, 36)
                    }
                    GridRow { /* Atomic Numbers 37 to 54 */
                        generateCells(37, 54)
                    }
                    GridRow { /* Atomic Numbers 55, 56, 72 to 86 */
                        generateCells(55, 56)
                        emptyCells(1)
                        generateCells(72, 86)
                    }
                    GridRow { /* Atomic Numbers 87, 88, 104 to 118 */
                        generateCells(87, 88)
                        emptyCells(1)
                        generateCells(104, 118)
                    }
                }
                Spacer()
                    .frame(height: 75)
                Grid {
                    GridRow { /* Lanthanides */
                        generateCells(57, 71)
                    }
                    GridRow { /* Actinides */
                        generateCells(89, 103)
                    }
                }
            }
        }
    }
    
    func generateCells(_ atomicNumStart: Int, _ atomicNumEnd: Int) -> some View {
        let start = atomicNumStart - 1
        let end = atomicNumEnd
        
        return ForEach(start ..< end, id: \.self) { atomicNumber in
            NavigationLink {
                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
            } label: {
                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
            }
            .buttonStyle(.plain)
        }
    }
    
    func emptyCells(_ amountOfCells: Int) -> some View {
        let amount = amountOfCells
        
        return ForEach(0 ..< amount, id: \.self) { _ in
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray)
                .frame(width: 100, height: 100)
                .opacity(0)
        }
    }
}

#Preview {
    return Group {
        PeriodicElementTable()
            .environment(ModelData())
    }
    
}
