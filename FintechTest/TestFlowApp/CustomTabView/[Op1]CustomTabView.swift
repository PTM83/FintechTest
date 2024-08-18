//
//  SwiftUIView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 16-08-24.
//

import SwiftUI

struct CustomTabView1: View {
    
    @Binding var selectedTab: Int
    
    let footerIcon1: [(text: String, icon: String)] = [("Inicio","house"),
                                                       ("Transferir","arrow.left.arrow.right"),
                                                       ("Pago QR","qrcode"),
                                                       ("Tarjetas","creditcard"),
                                                       ("Inversiones","dollarsign"),
                                                       ("Dudas", "questionmark.circle")
    ]
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(.blue, lineWidth: 0.5)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.blue.opacity(0.3)) // Fondo con opacidad azul
            )
            .frame(maxWidth:.infinity)
            .frame(height: 75)
            .overlay(
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(alignment:.center, spacing:0) {
                        ForEach(Array(footerIcon1.enumerated()), id: \.offset) { (index, data) in let (textIcon, nameIcon) = data
                            
                            contentTabView(nameIcon: nameIcon,
                                           textIcon: textIcon,
                                           isSelected: selectedTab == index
                            )
                            .onTapGesture {
                                withAnimation(.easeIn(duration: 0.2)) {
                                    selectedTab = index
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            )
            .frame(height:80)
            .padding(.horizontal,9)
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 5)
            .preferredColorScheme(.light)
    }
}

#Preview {
    VStack{
        Spacer()
        CustomTabView1(selectedTab: .constant(0))
    }
}

struct contentTabView: View {
    
    var nameIcon:String
    var textIcon:String
    var isSelected: Bool
    
    var body: some View {
        
        VStack(alignment:.center, spacing:3) {
            
            Image(systemName: nameIcon)
                .resizable()
                .scaledToFit()
                .frame(width:24, height:24)
            Text(textIcon)
                .font(.system(size: 14, weight: .medium, design: .rounded))
            
        }
        .frame(width:75, height:75)
        .background(isSelected ? .blue.opacity(0.3) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}


//        ZStack {
//            Circle()
//                .fill(.clear)
//                .overlay(
//                    Circle()
//                        .strokeBorder(.black, lineWidth: 2)
//                )
//
//            VStack(alignment:.center, spacing:3) {
//                Image(systemName: nameIcon)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width:25, height:25)
//                Text(textIcon)
//                    .font(.system(size: 14, weight: .medium, design: .rounded))
//            }
//        }
//        .frame(width:80, height:80)
