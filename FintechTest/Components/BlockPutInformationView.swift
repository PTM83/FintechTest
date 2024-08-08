//
//  BlockPutInformationView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 07-08-24.
//

import SwiftUI

struct BlockPutInformationView: View {
    var percentWidth: Double
    var percentHeight: Double
    var xPosition: CGFloat
    var yPosition: CGFloat
    var radius: Double = 10
    
    var secondaryColor: Color = CustomColors.letterColor.toSwiftColor()
    
    var body: some View {

        RoundedRectangle(cornerRadius: radius)
            .frame(width: UIScreen.main.bounds.width*(1-percentWidth),
                   //El valor debe modificarse si se agrega un gesto
                   height: UIScreen.main.bounds.height*(1-percentHeight)).foregroundStyle(secondaryColor)
            .shadow(color: .gray, radius: radius)
            .offset(x: xPosition, y: yPosition)
        
    }
}

#Preview {
    BlockPutInformationView(percentWidth: 0.07, percentHeight: 0.78, xPosition: 0, yPosition: -10)
}
