//
//  DataConstantApp.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 30-07-24.
//

import SwiftUI

// Estructura para encapsular los colores
struct CustomColors {
    static let primaryColor = formatRGBColor(colorRed: 213, colorGreen: 160, colorBlue: 33)
    static let letterColor = formatRGBColor(colorRed: 75, colorGreen: 66, colorBlue: 55)
}

// Estructura para encapsular los elementos
struct CustomElements {
    static let elements: Array<Any> = Array(1...9) + [Image(systemName: "delete.left"), 0]
}

