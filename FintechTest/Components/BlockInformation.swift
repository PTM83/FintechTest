//
//  BlockInformation.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 05-08-24.
//

import SwiftUI

struct BlockInformation: View {
    var frameWidth: CGFloat
    var frameHeight: CGFloat
    @State private var colorPrincipal: Color = CustomColors.primaryColor.toSwiftColor()
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(CustomColors.letterColor.toSwiftColor())
            .frame(width: frameWidth, height: frameHeight)
            .shadow(color: CustomColors.digitColor.toSwiftColor().opacity(0.5), radius: 10, y: 5)
            .overlay(
                
                completeTextBlock(
                    PrincipalText: "Mi cuenta MACH",
                    underlineText: "Cuenta Corriente BCI 7771 12 345 678",
                    SecondText: "Saldo disponible",
                    valueText: "$ 15.953",
                    colorPrincipal: colorPrincipal)
            )
    }
}

#Preview {
    BlockInformation(frameWidth: 360, frameHeight: 200)
}

struct completeTextBlock: View {
    
    var PrincipalText: String
    var underlineText: String
    var SecondText: String
    var valueText: String
    var colorPrincipal: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            HStack(alignment:.firstTextBaseline) {
                HeadBlockName(PrincipalText: PrincipalText, underlineText: underlineText)
                
                Spacer()
                
                Button(action: {
                    
                },
                       label: {
                    Image(systemName: IconApp.sharedInformation).rotationEffect(.degrees(-30))
                        .foregroundColor(.black)
                })
            }
            .font(.system(size: 18, weight: .light, design: .monospaced))
            .tracking(-0.9)
            
            agregateText(secondText: SecondText,
                         valueText: valueText,
                         colorPrincipal: colorPrincipal)
            
            Rectangle()
                .frame(width: .infinity, height: 1).foregroundColor(.gray)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                   label: {
                Text("Ver mis movimientos")
                    .font(.system(size: 20, weight: .semibold, design: .rounded)).frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(colorPrincipal)
            })
            
        }
        .padding(20)
    }
    

    struct agregateText: View {
        
        var secondText: String
        var valueText: String
        var colorPrincipal: Color
        
        var body: some View {
            VStack(alignment: .leading, spacing: 2) {
                Text(secondText)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                Text(valueText)
                    .font(.system(size: 38, weight: .bold, design: .rounded))
            }.foregroundColor(colorPrincipal)
        }
    }
    
}
