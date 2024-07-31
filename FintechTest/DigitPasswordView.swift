//
//  DigitPasswordView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 30-07-24.
//

import SwiftUI

struct DigitPasswordView: View {
    
    let items: [Any]
    var letterColor: Color
    private let columns = [
        GridItem(.flexible(), spacing:50),
        GridItem(.flexible(), spacing:50),
        GridItem(.flexible(), spacing:50)
    ]
    
    let constant = Constant()
    
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: constant.spacingLVGrid) {
            ForEach(0..<items.count, id: \.self) { element in
                
                if let number = items[element] as? Int {
                    Button(action: {
                        // Acción cuando se presiona el botón
                        print("Número presionado: \(number)")
                    }) {
                        Text("\(number)")
                            .font(.system(size: constant.sizeLetter,
                                          weight: .light,
                                          design: .rounded)
                            )
                    }
                } else if let image = items[element] as? Image {
                    Button(action: {
                        
                    }) {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: constant.widthFrame, height: constant.heightFrame)
                    }
                }
            }.foregroundColor(letterColor)
        }
        .padding(.horizontal, 50)
    }
}


#Preview {
    DigitPasswordView(items: Array(1...9), letterColor: .blue)
}
