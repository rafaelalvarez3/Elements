//
//  PeriodicElementList.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/11/24.
//

import SwiftUI

struct PeriodicElementList: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(modelData.periodicElements) { element in
                    PeriodicElementRow(periodicElement: element)
                }
            }
        }
    }
}

#Preview {
    PeriodicElementList()
        .environment(ModelData())
}
