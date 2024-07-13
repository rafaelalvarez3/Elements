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
            
            switch periodicElement.elementType {
            case "alkali metal":
                Capsule()
                    .fill(.purple)
                    .frame(width: 175, height: 10)
            case "alkaline earth metal":
                Capsule()
                    .fill(.red)
                    .frame(width: 175, height: 10)
            case "transition metal":
                Capsule()
                    .fill(.brown)
                    .frame(width: 175, height: 10)
            case "post-transition metal":
                Capsule()
                    .fill(.mint)
                    .frame(width: 175, height: 10)
            case "metalloid":
                Capsule()
                    .fill(.pink)
                    .frame(width: 175, height: 10)
            case "halogen":
                Capsule()
                    .fill(.green)
                    .frame(width: 175, height: 10)
            case "noble gas":
                Capsule()
                    .fill(.white)
                    .frame(width: 175, height: 10)
            case "nonmetal":
                Capsule()
                    .fill(.orange)
                    .frame(width: 175, height: 10)
            case "metal":
                Capsule()
                    .fill(.blue)
                    .frame(width: 175, height: 10)
            case "actinoid":
                Capsule()
                    .fill(.cyan)
                    .frame(width: 175, height: 10)
            case "lanthanoid":
                Capsule()
                    .fill(.cyan)
                    .frame(width: 175, height: 10)
            default:
                Capsule()
                    .fill(.black)
                    .frame(width: 175, height: 10)
            }
            
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
        }
        .padding()
        
    }
}

