//
//  MainToolBarView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 09-08-24.
//

import SwiftUI

struct MainToolBarView<Content: View, Destination: View>: View {
    
    /// Vista que permite ingresar la siguiente información:
    ///
    /// Parámetros
    ///mainColor: Color de fondo.
    ///secondaryColor: Color de las letras.
    ///personName: Nombre de la persona dueña de la cuenta.
    ///
    ///destinationOne: Corresponde al icono de menú
    ///destinationTwo: Corresponde al icono de pregunta
    
    // Colores a Utilizar
//    @Binding var viewID: Int
    @EnvironmentObject var viewRouter: ViewRouter
    
    let mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    let secondaryColor: Color = CustomColors.letterColor.toSwiftColor()
    
    // orden de las variables si importa
    var personName: String
    var destinationOne: () -> Destination
    var destinationTwo: () -> Destination
    var destinationTree: () -> Destination
    var content: () -> Content
    
    private let constantSize: [String:CGFloat] = [
        "iconSize":20,
        "textSize":25,
        "frameSize":40
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                // Acá debe ir el contenido que se desea Renderizar
                content()
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    NavigationLink(destination: destinationOne()) {
                        Image(systemName: "text.alignleft")
                    }
                    
                    HStack(alignment:.center, spacing: 5) {
                        if let frameSize = constantSize["frameSize"] {
                            Circle()
                                .stroke(secondaryColor,
                                        lineWidth: 2)
                                .frame(width: frameSize,
                                       height: frameSize)
                                .overlay(
                                    Image(systemName: "person.fill").foregroundColor(secondaryColor)
                                        .scaledToFit()
                                )
                        }
                        if let textSize = constantSize["textSize"] {
                            Text("Hola \(personName)")
                                .font(.system(size: textSize))
                        }
                    }
                    
                }
                
                ToolbarItem (placement: .topBarTrailing) {
                    HStack(spacing: 0) {
                        NavigationLink(destination: destinationTwo()) {
                            Image(systemName: "bell")
                        }
                        NavigationLink(destination: destinationTree()) {
                            Image(systemName: "questionmark.circle")
                        }
                    }
                }
            }
            .customizeNavigatorBar(primaryColor: UIColor(mainColor))
            .navigationBarBackButtonHidden(true)
            .foregroundColor(secondaryColor)
            .font(.system(size: constantSize["iconSize"] ?? 20,
                          weight: .medium,
                          design: .rounded))
            .toolbarBackground(mainColor, for: .automatic)
            .toolbarBackground(.visible, for: .navigationBar)
//                .onAppear {
//                    let appearance = UITabBarAppearance()
//                                    appearance.configureWithOpaqueBackground()
//                                    appearance.backgroundColor = UIColor(mainColor) // Establece el color de fondo del tabBar
//                                    appearance.shadowColor = UIColor(mainColor) // Establece el color de la línea de separación
//
//                                    UITabBar.appearance().standardAppearance = appearance
//                                    UITabBar.appearance().scrollEdgeAppearance = appearance
//                }
        }
    }
}

#Preview {
    MainToolBarView(
//        viewID: .constant(0),
        personName: "Person",
        destinationOne: {
            TestView() // Primera vista de destino
        },
        destinationTwo: {
            TestView() // Segunda vista de destino
        },
        destinationTree: {
            TestView() // Segunda vista de destino
        },
        content: {
            Text("Test View")
                .foregroundStyle(.black)
        }
    )
}
