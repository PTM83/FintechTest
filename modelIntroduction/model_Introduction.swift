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
