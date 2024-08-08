
//  HeaderMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 07-08-24.


import SwiftUI

struct HeaderMainView: View {
    
    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    var percentHeight: CGFloat = 0.72

    var body: some View {
        ZStack(alignment: .top) {

            BlockPutInformationView(percentWidth: 0,
                                    percentHeight: percentHeight,
                                    xPosition: 0,
                                    yPosition: 0,
                                    radius: 0,
                                    secondaryColor: mainColor)
            // Vist de los Iconos Header
            IconHeaderView()
        }
    }
}

#Preview {
    HeaderMainView()
}

