//
//  PeriodicElementCell.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/12/24.
//

import SwiftUI

struct PeriodicElementCell: View {
    var periodicElement: PeriodicElement
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 14)
            HStack {
                Spacer()
                    .frame(width: 14)
                
                Text("\(periodicElement.id)")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    //.border(.red)
                Spacer()

            }
            Spacer()
                .frame(height: 15)
            HStack {
                Spacer()
                Text(periodicElement.symbol)
                    .font(.system(size: 75))
                    .fontWeight(.bold)
                    //.border(.red)
                Spacer()
            }
            Spacer()
                .frame(height: 30)
            Capsule()
                .fill(.orange)
                .frame(width: 175, height: 10)
            Spacer()
                .frame(height: 20)
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray)
                .frame(width: 200, height: 200)
        )
        .frame(width: 200, height: 200)
    }
}

#Preview("Element Cell") {
    let periodicElements = ModelData().periodicElements
    return Group {
        VStack {
            HStack {
                PeriodicElementCell(periodicElement: periodicElements[0])
                PeriodicElementCell(periodicElement: periodicElements[1])
                PeriodicElementCell(periodicElement: periodicElements[2])
                PeriodicElementCell(periodicElement: periodicElements[3])
                PeriodicElementCell(periodicElement: periodicElements[4])
            }
            HStack {
                PeriodicElementCell(periodicElement: periodicElements[5])
                PeriodicElementCell(periodicElement: periodicElements[6])
                PeriodicElementCell(periodicElement: periodicElements[7])
                PeriodicElementCell(periodicElement: periodicElements[8])
                PeriodicElementCell(periodicElement: periodicElements[9])
            }
            HStack {
                PeriodicElementCell(periodicElement: periodicElements[10])
                PeriodicElementCell(periodicElement: periodicElements[11])
                PeriodicElementCell(periodicElement: periodicElements[12])
                PeriodicElementCell(periodicElement: periodicElements[13])
                PeriodicElementCell(periodicElement: periodicElements[14])
            }
        }
        .padding()
        
    }
}

