//
//  DigitPasswordView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 30-07-24.
//

import SwiftUI

/// Una vista que muestra una cuadrícula de elementos que pueden ser números o imágenes.
/// La vista permite que los elementos se distribuyan en una cuadrícula flexible con columnas y espaciado definidos.
///
/// - Parameters:
///   - items: Una lista de elementos que se mostrarán en la cuadrícula. Los elementos pueden ser números (`Int`) o imágenes (`Image`).
///   - letterColor: El color de las letras de los elementos de la cuadrícula.

struct DigitPasswordView: View {
    
    /// Los elementos que se mostrarán en la cuadrícula.
    let items: [Any]
    /// El color de las letras de los elementos de la cuadrícula.
    var letterColor: Color
    /// Columnas de la cuadrícula con espaciado entre ellas.
    private let columns = [
        GridItem(.flexible(), spacing:50),
        GridItem(.flexible(), spacing:50),
        GridItem(.flexible(), spacing:50)
    ]
    /// Constantes utilizadas en la vista.
    let constant = Constant()
    
    @Binding var enteredDigit: [Int]
    let maxDigit: Int = 4
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: constant.spacingLVGrid) {
            ForEach(0..<items.count, id: \.self) { element in
                
                if let number = items[element] as? Int {
                    Button(action: {
                        // Acción cuando se presiona el botón
                        
                        if enteredDigit.count < maxDigit {
                            enteredDigit.append(number)
                        }
                        print("Número presionado: \(number), \(enteredDigit)")
                    }) {
                        Text("\(number)")
                            .font(.system(size: constant.sizeLetter,
                                          weight: .light,
                                          design: .rounded)
                            )
                    }
                } else if let image = items[element] as? Image {
                    Button(action: {
                        if enteredDigit.count != 0 {
                            enteredDigit.removeLast()
                        }
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
    DigitPasswordView(items: Array(1...9) + [Image(systemName: "delete.left"), 0],
                      letterColor: .blue,
                      enteredDigit: .constant([]))
}
