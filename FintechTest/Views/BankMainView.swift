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
    var letterColor: Color = CustomColors.digitColor.toSwiftColor()
    
    @State private var isLoading: Bool = false
    @State private var initialPosition: CGFloat = 0.0
    @State private var currentPosition: CGFloat = 0.0
    @State var testHeight: CGFloat = 24.0
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        MainToolBarView(
//            viewID: $viewID,
            personName: "Pablo",
            destinationOne: { TestView() },
            destinationTwo: { TestView() },
            destinationTree: { TestView() },
            content: {
                
                VStack {
                    BlockInformationView(testHeight: isLoading ? $testHeight : .constant(0.0))
                    
                    ScrollView(showsIndicators: false) {
                        
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(mainColor)
//                            .frame(height: 120)
//                            .padding(.bottom, 25)
                        
                        GeometryReader { geo in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(mainColor)
                                .frame(height: 120) // Aplica testHeight aquí
                                .padding(.bottom, 25)
                                .onAppear {
                                    initialPosition = geo.frame(in: .global).minY
                                    currentPosition = geo.frame(in: .global).minY
                                }
                                .onChange(of: geo.frame(in: .global).minY) { oldValue, newValue in
                                    currentPosition = newValue
                                    if currentPosition > initialPosition {
                                        isLoading = true
                                        testHeight = 24.0 // Actualiza testHeight
                                        print("\(testHeight)")
                                    } else if currentPosition <= initialPosition {
                                        isLoading = false
                                        testHeight = 0.0 // Restablece a valor predeterminado o como necesites
                                    }
                                }
                        }
                        .frame(height: 120 + testHeight) // Ajusta la altura total en función de testHeight
                        
                        CarruselMainView(textTitle: "¿Qué quieres hacer hoy?")
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Conoce MACH")
                                .font(.system(size: 20, weight: .light, design: .rounded))
                                .foregroundStyle(letterColor)
                                .kerning(1.4)
                                .padding(.vertical)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(1..<5, id: \.self) { _ in
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(mainColor)
                                            .frame(width: 300, height: 120)
                                            .padding(.vertical)
                                    }
                                }
                            }
                        }

                    }
                    .padding(.horizontal)
                    .refreshable {
                        isLoading = true
                    }
                }
                .background(secondaryColor)
            }
        )
        .customizeNavigatorBar(primaryColor: UIColor(mainColor))
    }
}

#Preview {
//    BankMainView(viewID: .constant(0))
    BankMainView()
}
