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
                    
                    /* Atomic Numbers 1 to 2 */
                    GridRow {
                        /* Atomic Number 1 */
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[0])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[0])
                        }
                        .buttonStyle(.plain)
                        
                        /* 16 empty cells */
                        ForEach(0..<16) { _ in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.gray)
                                .frame(width: 100, height: 100)
                                .opacity(0)
                        }
                        
                        /* Atomic Number 2 */
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[1])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[1])
                        }
                        .buttonStyle(.plain)
                    }
                    
                    /* Atomic Numbers 3 to 10 */
                    GridRow {
                        
                        /* Atomic Numbers 3 to 4 */

                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[2])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[2])
                        }
                        .buttonStyle(.plain)
                        
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[3])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[3])
                        }
                        .buttonStyle(.plain)
                        
                        /* 10 empty cells */
                        ForEach(0..<10) { _ in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.gray)
                                .frame(width: 100, height: 100)
                                .opacity(0)
                        }
                        /* Atomic Numbers 5 to 10 */
                        ForEach(4..<10) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    /* Atomic Numbers 11 to 18 */
                    GridRow {
                        /* Atomic Numbers 11 to 12 */
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[10])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[10])
                        }
                        .buttonStyle(.plain)
                        
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[11])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[11])
                        }
                        .buttonStyle(.plain)
                        
                        /* 10 empty cells */
                        ForEach(0..<10) { _ in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.gray)
                                .frame(width: 100, height: 100)
                                .opacity(0)
                        }
                        
                        /* Atomic Numbers 13 to 18 */
                        ForEach(12..<18) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                    /* Atomic Numbers 19 to 36 */
                    GridRow {
                        ForEach(18..<36) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                    /* Atomic Numbers 37 to 54 */
                    GridRow {
                        ForEach(36..<54) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                    /* Atomic Numbers 55, 56, 72 to 86 */
                    GridRow {
                        /* Atomic Numbers 55 to 56 */
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[54])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[54])
                        }
                        .buttonStyle(.plain)
                        
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[55])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[55])
                        }
                        .buttonStyle(.plain)
                        
                        /* 1 empty cell */
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 100, height: 100)
                            .opacity(0)
                        /* Atomic Numbers 72 to 86 */
                        ForEach(71..<86) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    /* Atomic Numbers 87, 88, 104 to 118 */
                    GridRow {
                        /* Atomic Numbers 87 to 88 */

                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[86])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[86])
                        }
                        .buttonStyle(.plain)
                        
                        NavigationLink {
                            PeriodicElementDetail(periodicElement: modelData.periodicElements[87])
                        } label: {
                            PeriodicElementCell(periodicElement: modelData.periodicElements[87])
                        }
                        .buttonStyle(.plain)
                        
                        /* 1 empty cell */
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray)
                            .frame(width: 100, height: 100)
                            .opacity(0)
                        /* Atomic Numbers 104 to 118 */
                        ForEach(103..<118) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                Spacer()
                    .frame(height: 75)
                
                /* Atomic Numbers 57 to 71, 89 to 103 */
                Grid {
                    /* Lanthanides */
                    GridRow {
                        /* Atomic Numbers 57 to 71 */
                        ForEach(56..<71) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    /* Actinides */
                    GridRow {
                        /* Atomic Numbers 89 to 103 */
                        ForEach(88..<103) { atomicNumber in
                            NavigationLink {
                                PeriodicElementDetail(periodicElement: modelData.periodicElements[atomicNumber])
                            } label: {
                                PeriodicElementCell(periodicElement: modelData.periodicElements[atomicNumber])
                            }
                            .buttonStyle(.plain)
                        }
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
