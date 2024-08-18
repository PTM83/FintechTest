//
//  CustomPrincipalView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 16-08-24.
//

import SwiftUI

struct CustomPrincipalView: View {
    
    let mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    let letterColor: Color = CustomColors.digitColor.toSwiftColor()
    
    @State private var selectedTab: Int = 0
    @State private var varHeight: CGFloat = 10.0
    @State private var isLoading: Bool = false
    
    var body: some View {
        
        VStack {
            ZStack(alignment: .center) {
                switch selectedTab {
                case 0:
                    //                Color.yellow.opacity(0.6)
                    VStack(spacing:0) {
                        
                        CustomBarView(selectedTab: $selectedTab)
                            .ignoresSafeArea(edges: .top)
                        CustomMainView(mainColor: mainColor, varHeight: isLoading ? $varHeight : .constant(0.0), isLoading: $isLoading)
                            .padding(.bottom,20)
                        
                        // Cuerpo que va dentro del ScrollView
//                        GeometryReader { geo in
//                            
//                            let minimumY: CGFloat = geo.frame(in: .named("CarruselMainView")).minY
//                            var middleY: CGFloat = geo.frame(in: .named("CarruselMainView")).minY
//                            let maximumY: CGFloat = geo.frame(in: .named("CarruselMainView")).maxY
//                            
//                            ScrollView {
// 
//                                CarruselMainView(textTitle: "¿Qué quieres hacer hoy?")
//                                    .padding(.horizontal)
//                                    .coordinateSpace(name:"CarruselMainView")
//                                    .onChange(of: minimumY) { oldValue, newValue in
//                                        print("minimmumY: \(minimumY), middleValue: \(middleY), maximumY: \(maximumY), oldValue: \(oldValue), newValue: \(minimumY)")
//                                        if newValue < oldValue {
//                                            print("oldValue: \(oldValue), newValue: \(newValue)")
//                                            isLoading = false
//                                        }
//                                    }
//                                
//                                VStack(alignment: .leading, spacing: 0) {
//                                    Text("Conoce MACH")
//                                        .font(.system(size: 20, weight: .light, design: .rounded))
//                                        .foregroundStyle(letterColor)
//                                        .kerning(1.4)
//                                        .padding(.vertical)
//                                    ScrollView(.horizontal, showsIndicators: false) {
//                                        HStack {
//                                            ForEach(1..<5, id: \.self) { _ in
//                                                RoundedRectangle(cornerRadius: 10)
//                                                    .fill(mainColor)
//                                                    .frame(width: 300, height: 120)
//                                                    .padding(.vertical)
//                                            }
//                                        }
//                                    }
//                                }.padding(.horizontal)
//                            }
//                            
//                        }
                        ScrollView {
                            VStack {
                                GeometryReader { geo in
                                    let minimumY = geo.frame(in: .named("CarruselSpace")).minY
//                                    let middleY = geo.frame(in: .named("CarruselSpace")).midY
//                                    let maximumY = geo.frame(in: .named("CarruselSpace")).maxY
                                    
                                    CarruselMainView(textTitle: "¿Qué quieres hacer hoy?")
                                        .padding(.horizontal)
                                        .coordinateSpace(name: "CarruselSpace")
                                        .onChange(of: minimumY) { oldValue, newValue in
//                                            
//                                            print("minY: \(middleY), midY: \(middleY), maxY: \(maximumY)")
                                            if newValue < oldValue {
//                                                print("Scrolled down")
//                                                print("minY: \(minimumY), midY: \(middleY), maxY: \(maximumY)")
//                                                print("newValue: \(newValue), oldValue: \(oldValue)")
                                                isLoading = true
                                                
                                            } else if newValue > oldValue  {
//                                                print("Scrolled up")
//                                                print("minY: \(minimumY), midY: \(middleY), maxY: \(maximumY)")
//                                                print("newValue: \(newValue), oldValue: \(oldValue)")
                                                isLoading = false
                                            }
                                        }
                                }
                                .frame(height: 150) // Ajusta la altura según el contenido esperado
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Conoce MACH")
                                        .font(.system(size: 20, weight: .light, design: .rounded))
                                        .foregroundStyle(letterColor)
                                        .kerning(1.4)
                                    
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
                                .padding(.horizontal)
                            }
                        }

                        
                        Spacer()
                    }
                    .frame(maxHeight: .infinity)
                    .refreshable {
                        isLoading = true
                    }
                    
                case 1:
                    Color.blue.opacity(0.6)
                case 2:
                    Color.green.opacity(0.6)
                case 3:
                    Color.red.opacity(0.6)
                case 4:
                    Color.purple.opacity(0.6)
                case 5:
                    Color.orange.opacity(0.6)
                default:
                    Color.gray.opacity(0.6)
                }
                
                
            }
            .padding(0)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            //TabView
            Spacer()
            CustomTabView1(selectedTab: $selectedTab)
                .padding(.bottom, 25)
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    CustomPrincipalView()
}

/// Acá se debe proceder a ingresar cada vista para cada opción.
