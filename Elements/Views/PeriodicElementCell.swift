//
//  PeriodicElementCell.swift
//  Elements
//
//  Created by Rafael Alvarez on 7/12/24.
//

import SwiftUI

struct PeriodicElementCell: View {
    var periodicElement: PeriodicElement
    
    @State var isHover = false
    
    var body: some View {
        Button {
            print("Button Tapped")
        } label: {
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
                case "Alkali Metal":
                    Capsule()
                        .fill(Color(red: 13 / 255, green: 102 / 255, blue: 102 / 255))
                        .frame(width: 85, height: 7)
                case "Alkaline Earth Metal":
                    Capsule()
                        .fill(Color(red: 99 / 255, green: 46 / 255, blue: 57 / 255))
                        .frame(width: 85, height: 7)
                case "Transition Metal":
                    Capsule()
                        .fill(Color(red: 67 / 255, green: 60 / 255, blue: 101 / 255))
                        .frame(width: 85, height: 7)
                case "Post-transition Metal":
                    Capsule()
                        .fill(Color(red: 48 / 255, green: 133 / 255, blue: 71 / 255))
                        .frame(width: 85, height: 7)
                case "Metalloid":
                    Capsule()
                        .fill(.orange)
                        .frame(width: 85, height: 7)
                case "Halogen":
                    Capsule()
                        .fill(Color(red: 59 / 255, green: 93 / 255, blue: 144 / 255))
                        .frame(width: 85, height: 7)
                case "Noble Gas":
                    Capsule()
                        .fill(Color(red: 126 / 255, green: 95 / 255, blue: 173 / 255))
                        .frame(width: 85, height: 7)
                case "Nonmetal":
                    Capsule()
                        .fill(Color(red: 42 / 255, green: 65 / 255, blue: 101 / 255))
                        .frame(width: 85, height: 7)
                case "Metal":
                    Capsule()
                        .fill(.blue)
                        .frame(width: 85, height: 7)
                case "Actinoid":
                    Capsule()
                        .fill(Color(red: 71 / 255, green: 159 / 255, blue: 195 / 255))
                        .frame(width: 85, height: 7)
                case "Lanthanoid":
                    Capsule()
                        .fill(Color(red: 173 / 255, green: 88 / 255, blue: 76 / 255))
                        .frame(width: 85, height: 7)
                default:
                    Capsule()
                        .fill(.black)
                        .frame(width: 85, height: 7)
                        .opacity(0)
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
        .buttonStyle(.plain)
        .scaleEffect(isHover ? 1.2 : 1)
        .onHover(perform: { hover in
            isHover = hover
        })
    }
}

#Preview("Element Cell") {
    let periodicElements = ModelData().periodicElements
    return Group {
        VStack {
            HStack {
                /* To preview a certain element, enter the atomic number minus 1 as the index. */
                PeriodicElementCell(periodicElement: periodicElements[80])
            }
        }
        .padding()
        
    }
}

