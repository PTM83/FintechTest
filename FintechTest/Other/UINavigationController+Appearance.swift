//
//  UINavigationController+Appearance.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 08-08-24.
//

import SwiftUI

//extension UINavigationController {
//    open override func viewDidLoad() {
//        super.viewDidLoad()
//        
////        let backArrowColor:Color = CustomColors.letterColor.toSwiftColor()
//        let leftArrowColor:Color = CustomColors.letterColor.toSwiftColor()
////        let mainColor:Color = CustomColors.primaryColor.toSwiftColor()
//        
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        
//        // Personaliza la apariencia del botón de retroceso
//        appearance.backButtonAppearance.normal.titleTextAttributes = [
//            .foregroundColor: UIColor(leftArrowColor), // Color del texto
//            .font: UIFont.systemFont(ofSize: 18, weight: .bold, width: .standard) // Fuente del texto
//        ]
//        
//        // Personaliza la flecha de retroceso
//        appearance.setBackIndicatorImage(UIImage(systemName: "arrow.left")?.withTintColor(.init(leftArrowColor),
//                                                                                          renderingMode: .alwaysOriginal),
//                                         transitionMaskImage: UIImage(systemName: "arrow.left"))
//        
//        // Aplica la apariencia a la barra de navegación
//        navigationBar.standardAppearance = appearance
//        navigationBar.compactAppearance = appearance
//        navigationBar.scrollEdgeAppearance = appearance
//    }
//}
