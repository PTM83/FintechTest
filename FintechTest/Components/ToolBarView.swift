//
//  ToolBarView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 08-08-24.
//

import SwiftUI

struct ToolBarView <Destination: View, Content: View>: View {
    
    var primaryColor: Color = CustomColors.primaryColor.toSwiftColor()
    var secondaryColor: Color = CustomColors.letterColor.toSwiftColor()
    
    var nameView: String
    var iconView: String
    var destination: () -> Destination
    var content: () -> Content
    
    var body: some View {

        NavigationView {
            VStack {
//                Text("Transferencia").foregroundStyle(.blue)
                content()

            }
            .toolbar {
            
                ToolbarItem(placement: .topBarLeading) {
                    Text(nameView)
                    
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: destination){
                        Image(systemName: iconView)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                    }
                }
                
            }.foregroundColor(secondaryColor)
                .font(.system(size: 25,
                              weight: .medium, design: .rounded))
                .toolbarBackground(primaryColor, for: .automatic)
                .toolbarBackground(.visible, for: .navigationBar)
        }
        .onAppear {
            // Aplicar la personalización globalmente
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            
            // Personaliza la apariencia del botón de retroceso
            appearance.backButtonAppearance.normal.titleTextAttributes = [
                .foregroundColor: UIColor(primaryColor), // Color del texto
                .font: UIFont.systemFont(ofSize: 18, weight: .bold) // Fuente del texto
            ]
            
            // Personaliza la flecha de retroceso
            appearance.setBackIndicatorImage(UIImage(systemName: "arrow.left")?.withTintColor(.init(primaryColor),renderingMode: .alwaysOriginal), transitionMaskImage: UIImage(systemName: "arrow.left"))
            
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            
        }
    }
}

#Preview {
    ToolBarView(nameView: "Hello", iconView: "person"){
        TestView()
    } content: {
        Text("Transferencia")
            .foregroundStyle(.blue)
    }
}
