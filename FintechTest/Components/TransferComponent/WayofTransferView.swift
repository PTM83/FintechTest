//
//  WayofTransferView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 08-08-24.
//

import SwiftUI

struct WayofTransferView: View {
    
    let mainColor:Color = CustomColors.primaryColor.toSwiftColor()
    let digitColor: Color = CustomColors.digitColor.toSwiftColor()
    var iconName:String = "laptopcomputer"
    var description: String = "Test"
    
    var body: some View {
        
        BlockPutInformationView(percentWidth: 0.7, percentHeight: 0.89, xPosition: 0, yPosition: 0, shadowColor: .gray)
            .overlay(
                
                VStack(alignment: .leading, spacing:10){
                    Image(systemName: iconName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 27, height: 27)
                        .foregroundStyle(mainColor)
                        .padding(.top,4)
                    Text(description)
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                        .kerning(0.2)
                        .frame(maxWidth: 100, maxHeight: 50,alignment: .topLeading)
                }.padding(1)
                .frame(width: 100, height: 90, alignment: .leading)
            )
    }
}

#Preview {
    WayofTransferView(iconName: "laptopcomputer", description: "Test")
}
