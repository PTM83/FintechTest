//
//  SwiftTestMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 11-08-24.
//

import SwiftUI

struct BankMainView: View {
    
    var secondaryColor: Color = CustomColors.letterColor.toSwiftColor()
    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    var letterColor:Color = CustomColors.digitColor.toSwiftColor()
    
    var body: some View {
        MainToolBarView(personName: "Pablo",
                        destinationOne: { TestView() },
                        destinationTwo: { TestView() },
                        destinationTree: { TestView() },
                        content: {
            
            VStack {
                // SEPARAR EN UNA NUEVA VISTA
                BlockInformationView()
                
                
                ScrollView {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(mainColor)
                        .frame(height: 120)
                        .padding(.bottom, 25)
                    
                    CarruselMainView(textTitle: "¿Qué quieres hacer hoy?")
                    
                    // Conoce Mach
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Conoce MACH")
                            .font(.system(size: 20, weight: .light, design: .rounded))
                            .foregroundStyle(letterColor)
                            .kerning(1.4)
                            .padding(.vertical)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(1..<5, id:\.self) { _ in
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(mainColor)
                                        .frame(width: 300, height: 120)
                                        .padding(.vertical)
                                }
                            }
//                            .background(.red)
                        }
                    } // <--- Conoce MACH View
                    
                }
                .padding(.horizontal)
                
                
                
//                Spacer()

            }
            .background(secondaryColor)
            
                
            }
        )
    }
}

#Preview {
    BankMainView()
}
