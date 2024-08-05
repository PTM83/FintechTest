//
//  DataConstantApp.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 30-07-24.
//

/*
 Paleta de Colores
 Fondo Principal = RGB(213, 160, 33)
 Fondo Blanco = RGB(237, 231, 217)
 Letra Principal = RGB(75, 66, 55)
 Letra Secundaria = RGB(164, 150, 148)
 Letra Terceria = RGB(115, 107, 96)
*/

import SwiftUI

// Estructura para encapsular los colores
struct CustomColors {
    static let primaryColor = formatRGBColor(colorRed: 213, colorGreen: 160, colorBlue: 33)
    static let digitColor = formatRGBColor(colorRed: 75, colorGreen: 66, colorBlue: 55)
    static let letterColor = formatRGBColor(colorRed: 237, colorGreen: 231, colorBlue: 217)
}

// Estructura para encapsular los elementos
struct CustomElements {
    static let elements: Array<Any> = Array(1...9) + [Image(systemName: "delete.left"), 0]
}

struct IconApp {
    
    static let footerIcon: [(String, String)] = [("Inicio","house"),
        ("Transferir","arrow.left.arrow.right"),
        ("Pago QR","qrcode"),
        ("Tarjetas","creditcard"),
        ("Inversiones","dollarsign")]
    
    static let iconHeader: Array<String> = ["bell","questionmark.circle"]
    
    static let sharedInformation = "point.3.connected.trianglepath.dotted"
    
}

// Estructura para condición de ingreso
class AttemptManager: ObservableObject {
    @Published var isAthenticated: Bool = false
    @Published var attempCount: Int = 0
    let maxAttemps: Int = 4
    var diffAttemps: Int {
        return maxAttemps - attempCount
    }
    
    static let shared = AttemptManager()
    
    private init() {}
}
