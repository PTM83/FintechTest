//
//  model_Introduction.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 30-07-24.
//

import SwiftUI

struct formatRGBColor {
    var colorRed: Double
    var colorBlue: Double
    var colorGreen: Double
    
    init(colorRed: Double, colorGreen: Double, colorBlue:Double) {
        self.colorRed = colorRed
        self.colorGreen = colorGreen
        self.colorBlue = colorBlue
    }
    
    var colorRGBRed: Double {
        colorRed/255
    }
    
    var colorRGBBlue: Double {
        colorBlue/255
    }
    var colorRGBGreen: Double {
        colorGreen/255
    }
    
    func toSwiftColor() -> Color {
        Color(red: colorRGBRed, green: colorRGBGreen, blue: colorRGBBlue)
    }
}

/// Estructura para mantener constantes utilizadas en la vista `DigitPasswordView`.
struct Constant {
    var spacingLVGrid: CGFloat
    var sizeLetter: CGFloat
    var widthFrame: CGFloat
    var heightFrame: CGFloat
    
    init(spacingLVGrid: CGFloat = 20, sizeLetter:CGFloat = 60, widthFrame:CGFloat = 50, heightFrame:CGFloat = 50) {
        
        self.spacingLVGrid = spacingLVGrid
        self.sizeLetter = sizeLetter
        self.widthFrame = widthFrame
        self.heightFrame = heightFrame
    }
}

/// Estructura que representa las credenciales del usuario.
struct UserCredentials {
    /// El número de celular del usuario
    var cellNumber: String
    
    ///La contraseña
    var password: [Int]
    
    /// Inicializador para la estructura UserCredentials
}
