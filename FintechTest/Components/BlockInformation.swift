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
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(CustomColors.letterColor.toSwiftColor())
            .frame(width: frameWidth, height: frameHeight)
            .shadow(color: CustomColors.digitColor.toSwiftColor().opacity(0.5), radius: 10, y: 5)
            .overlay(
                BoldTextBlock(SecondText: "Saldo disponible", valueText: "$ 15.953")
            )
    }
}

#Preview {
    BlockInformation(frameWidth: 360, frameHeight: 200)
}

struct BoldTextBlock: View {
    
    var SecondText: String
    var valueText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment:.firstTextBaseline) {
                HeadBlockName(PrincipalText: "Mi cuenta MACH", underlineText: "Cuenta Corriente BCI 7771 12345678")
                
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
            
            VStack(alignment: .leading, spacing: 2) {
                Text(SecondText)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                Text(valueText)
                    .font(.system(size: 38, weight: .bold, design: .rounded))
            }.foregroundColor(CustomColors.primaryColor.toSwiftColor())
            
        }
        .padding()
    }
}
