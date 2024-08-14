//
//  Extensions.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 14-08-24.
//

import Foundation
import SwiftUI

extension View {
    
    func customizeNavigatorBar(primaryColor: UIColor) -> some View {
        
        self.onAppear {
            // Aplicar la personalización globalmente
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            
            // Personaliza la apariencia del bóton de retroceso
            appearance.backButtonAppearance.normal.titleTextAttributes =
            [
                .foregroundColor: UIColor.clear, // Color del texto
                .font: UIFont.systemFont(ofSize: 0) // Fuente del texto
            ]
            
            // Personalizar la fecha retroceso
            if let backImage = UIImage(systemName: "arrow.left")?.withTintColor(primaryColor, renderingMode: .alwaysOriginal) {
                appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)
            }
            
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}
