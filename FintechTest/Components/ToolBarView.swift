//
//  ToolBarView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 08-08-24.
//

import SwiftUI

struct ToolBarView <Destination: View, Content: View>: View {
    
//    @Binding var viewID: Int
    @EnvironmentObject var viewRouter: ViewRouter
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
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(secondaryColor)
                .font(.system(size: 25,
                              weight: .medium, design: .rounded))
                .toolbarBackground(primaryColor, for: .automatic)
                .toolbarBackground(.visible, for: .navigationBar)
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Importante para mantener el estilo de navegación correcto
    }
}

#Preview {
    ToolBarView( nameView: "Hello", iconView: "person"){
        TestView()
    } content: {
        Text("Transferencia")
            .foregroundStyle(.blue)
    }
}
