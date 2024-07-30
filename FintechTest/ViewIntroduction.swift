//
//  ContentView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 29-07-24.
//

import SwiftUI

struct ViewIntroduction: View {
    
    let primaryColor = formatRGBColor(colorRed: 213, colorGreen: 160, colorBlue: 33)
    let letterColor = formatRGBColor(colorRed: 75, colorGreen: 66, colorBlue: 55)
    
    let numbers: Array<Int> = Array(1...9)
    
    
    var body: some View {
        
        let columns = [
            GridItem(.flexible(), spacing:50),
            GridItem(.flexible(), spacing:50),
            GridItem(.flexible(), spacing:50)
        ]
        
        ZStack(alignment: .center) {
            Rectangle()
            primaryColor.toSwiftColor()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Text("Insert your PIN")
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .padding(.bottom, 32)
                
                HStack {
                    ForEach(0..<4) { _ in
                        Image(systemName: "circle")
                    }
                }
                
                Spacer()
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(numbers, id: \.self) { number in
                        Button(action: {
                            // Acción cuando se presiona el botón
                            print("Número presionado: \(number)")
                        }) {
                            Text("\(number)")
                                .font(.system(size:65,
                                              weight: .light,
                                              design: .rounded)
                                )
                                .foregroundColor(letterColor.toSwiftColor())
                        }
                    }
                }
                .padding(.horizontal, 80)
                
                Spacer()
                
                Text("Forgot my PIN")
            }
            .padding()
        }
    }
}


#Preview {
    ViewIntroduction()
}

