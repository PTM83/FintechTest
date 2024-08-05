//
//  BlockInformation.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 05-08-24.
//

import SwiftUI

func BlockInformation() -> some View {
    
    let frameWidth:CGFloat = 360
    let frameHeight: CGFloat = 200
    
    return RoundedRectangle(cornerRadius: 10)
        .foregroundColor(CustomColors.letterColor.toSwiftColor())
        .frame(width: frameWidth,
               height: frameHeight)
        .shadow(color: CustomColors.digitColor.toSwiftColor().opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y: 5)
}
