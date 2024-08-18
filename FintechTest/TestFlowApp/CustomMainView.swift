//
//  CustomMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 17-08-24.
//

import SwiftUI

struct CustomMainView: View {
    
    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    @Binding var varHeight: CGFloat
    @Binding var isLoading: Bool
    
    
    // VarHeight --> Aumentará en 10px
    
    var body: some View {
        ZStack(alignment:.top){

            Rectangle()
                .fill(mainColor)
                .coordinateSpace(name: "Rectangle")
                .frame(height: isLoading ? 140.0 + varHeight : 140.0)
                .background(.blue)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.white.opacity(0.8))
                .strokeBorder(.gray.opacity(0.8), lineWidth: 1)
                .shadow(color: .gray, radius: 5, x: 0, y: 0.9)
                .blur(radius: 0.8)
                .frame(maxWidth: .infinity)
                .frame(height: isLoading ? 140 + varHeight + 40: 140) // Ampliar 10 + 40
                .padding(.horizontal)
            
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Text("Mi cuenta MACH")
                        .font(.system(size: 20, weight: .light, design: .rounded))
                    
                    Spacer()
                    
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:20, height:25)
                }
                
                
                VStack(alignment: .leading, spacing:5) {
                    Text("Cuenta Corriente BCI - 7779 123 456 78")
                        .font(.subheadline)
                        .fontDesign(.rounded)
                        .fontWeight(.light)
                    
                    Text("Saldo Disponible")
                        .foregroundStyle(mainColor)
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                    
                    HStack(alignment: .center, spacing: 1){
                        Image(systemName: "dollarsign")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:20, height:20)
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                        Text("15.953")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                    }
                    .foregroundStyle(mainColor)
                }
                
                if isLoading {
                    VStack(spacing:10) {
                        Divider()
                        Text("Ver mis movimientos")
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.top,10)
            .padding(.leading,30)
            .padding(.trailing, 30)
        }
//        .frame(height: isLoading ? 330.0 : 140.0)
//        .background(.blue)
    }
}

#Preview {
    CustomMainView(varHeight: .constant(0), isLoading: .constant(false))
}

//'import SwiftUI
//
//struct CustomMainView: View {
//
//    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
//    @Binding var varHeight: CGFloat
//    @Binding var isLoading: Bool
//
//    var body: some View {
//        ZStack(alignment:.top){
//            GeometryReader { geo in
//
//                Rectangle()
//                    .fill(mainColor)
//                    .frame(height: isLoading ? 140.0 + varHeight : 140.0)
//                    .onChange(of: geo.frame(in: .global).minY) { oldvalue, newValue in
//                        let maxY = geo.frame(in: .global).maxY
//
//                        if newValue < maxY && isLoading {
//                            isLoading = false
//                        }
//                    }
//            }
//            .background(Color.clear) // Evitar cualquier fondo duplicado aquí
//
//            VStack {
//                RoundedRectangle(cornerRadius: 15)
//                    .fill(.white.opacity(0.8))
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 15)
//                            .strokeBorder(.gray.opacity(0.8), lineWidth: 1)
//                            .shadow(color: .gray, radius: 5, x: 0, y: 0.9)
//                            .blur(radius: 0.8)
//                    )
//                    .frame(maxWidth: .infinity)
//                    .frame(height: isLoading ? 140 + varHeight + 40 : 140)
//                    .padding(.horizontal)
//
//                VStack(alignment: .leading) {
//                    HStack(alignment: .center) {
//                        Text("Mi cuenta MACH")
//                            .font(.system(size: 20, weight: .light, design: .rounded))
//
//                        Spacer()
//
//                        Image(systemName: "person")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width:20, height:25)
//                    }
//
//                    VStack(alignment: .leading, spacing: 5) {
//                        Text("Cuenta Corriente BCI - 7779 123 456 78")
//                            .font(.subheadline)
//                            .fontDesign(.rounded)
//                            .fontWeight(.light)
//
//                        Text("Saldo Disponible")
//                            .foregroundStyle(mainColor)
//                            .font(.system(size: 20, weight: .medium, design: .rounded))
//
//                        HStack(alignment: .center, spacing: 1){
//                            Image(systemName: "dollarsign")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width:20, height:20)
//                                .fontDesign(.rounded)
//                                .fontWeight(.bold)
//                            Text("15.953")
//                                .font(.system(size: 30, weight: .bold, design: .rounded))
//                        }
//                        .foregroundStyle(mainColor)
//                    }
//
//                    if isLoading {
//                        VStack {
//                            Divider()
//                            Text("Ver mis movimientos")
//                        }
//                    }
//                }
//                .frame(width: 330)
//                .padding()
//            }
//        }
//        .background(Color.clear) // Asegurar que no haya fondo duplicado aquí
//    }
//}
//
//#Preview {
//    CustomMainView(varHeight: .constant(0), isLoading: .constant(false))
//}

