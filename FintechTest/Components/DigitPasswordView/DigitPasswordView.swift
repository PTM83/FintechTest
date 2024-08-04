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
    @ObservedObject private var attemptManager = AttemptManager.shared
    let maxDigit: Int = 4
    
    var body: some View {
        print("DigitPasswordView body is being rendered")
        
        return LazyVGrid(columns: columns, spacing: constant.spacingLVGrid) {
            ForEach(0..<items.count, id: \.self) { element in
                generateButton(for: items[element])
            }.foregroundColor(letterColor)
        }
        .padding(.horizontal, 50)
    }
    
    // Se separa la vista de Botones para tener un código mas legible
    @ViewBuilder
    private func generateButton(for item: Any) -> some View {
        if let number = item as? Int {
            Button(action: {
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
            }.disabled(attemptManager.attempCount >= attemptManager.maxAttemps)
                .opacity(attemptManager.attempCount >= attemptManager.maxAttemps ? 0.5 : 1.0)
        } else if let image = item as? Image {
            Button(action: {
                if !enteredDigit.isEmpty {
                    enteredDigit.removeLast()
                }
            }) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: constant.widthFrame, height: constant.heightFrame)
            }
            .disabled(enteredDigit.isEmpty) // DEsactiva el botón si no hay elementos
            .opacity(enteredDigit.isEmpty ? 0.5 : 1.0) // Permite agregar una opacidad si el botón esta deshabilitado y sino se coloca su color completo
        }
    }
}

#Preview {
    DigitPasswordView(items: Array(1...9) + [Image(systemName: "delete.left"), 0],
                      letterColor: .blue,
                      enteredDigit: .constant([]))
}
