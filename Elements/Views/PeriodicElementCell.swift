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
                .frame(height: 20)
            HStack {
                Spacer()
                    .frame(width: 10)
                
                Text("\(periodicElement.id)")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    //.border(.red)
                Spacer()

            }
            
            HStack {
                Spacer()
                Text(periodicElement.symbol)
                    .font(.system(size: 42.5))
                    .fontWeight(.bold)
                    //.border(.red)
                Spacer()
            }
            Spacer()
                .frame(height: 7)
            
            switch periodicElement.elementType {
            case "alkali metal":
                Capsule()
                    .fill(.purple)
                    .frame(width: 85, height: 7)
            case "alkaline earth metal":
                Capsule()
                    .fill(.red)
                    .frame(width: 85, height: 7)
            case "transition metal":
                Capsule()
                    .fill(.brown)
                    .frame(width: 85, height: 7)
            case "post-transition metal":
                Capsule()
                    .fill(.mint)
                    .frame(width: 85, height: 7)
            case "metalloid":
                Capsule()
                    .fill(.pink)
                    .frame(width: 85, height: 7)
            case "halogen":
                Capsule()
                    .fill(.green)
                    .frame(width: 85, height: 7)
            case "noble gas":
                Capsule()
                    .fill(.white)
                    .frame(width: 85, height: 7)
            case "nonmetal":
                Capsule()
                    .fill(.orange)
                    .frame(width: 85, height: 7)
            case "metal":
                Capsule()
                    .fill(.blue)
                    .frame(width: 85, height: 7)
            case "actinoid":
                Capsule()
                    .fill(.cyan)
                    .frame(width: 85, height: 7)
            case "lanthanoid":
                Capsule()
                    .fill(.cyan)
                    .frame(width: 85, height: 7)
            default:
                Capsule()
                    .fill(.black)
                    .frame(width: 85, height: 7)
            }
            
            Spacer()
                .frame(height: 20)
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray)
                .frame(width: 100, height: 100)
        )
        .frame(width: 100, height: 100)
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
        }
        .padding()
        
    }
}

