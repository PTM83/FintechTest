//
//  IconHeaderView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 04-08-24.
//

import SwiftUI

struct IconHeaderView: View {
    
    let colorTest: Color = CustomColors.letterColor.toSwiftColor()
    let mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    
    
    var body: some View {
        HStack(alignment: .center) {
            
            Button(action: {},
                   label: {
                Image(systemName: "text.alignleft")
                    .font(.system(size: 25))
            })
            
            Circle()
                .stroke(colorTest,
                        lineWidth: 2)
                .frame(width: 40, height: 40)
                .overlay(
                    Image(systemName: "person.fill").foregroundColor(colorTest).font(.system(size: 28))
                )
            
            Text("Hola PABLO")
                .font(.system(size: 25))
            
            Spacer()
            
            ForEach(IconApp.iconHeader, id: \.self) { icon in
                Button(action: {
                    // Agregar las vistas o función que permita ir a otra vista, para cada icono
                }, label: {
                    Image(systemName: icon)
                    
                })
            }
            .font(.system(size: 25))
            
        }
        .padding()
        .foregroundColor(colorTest)
    }
}

#Preview {
    IconHeaderView()
        .background(.blue)
}

/*
 Nota: Ver la forma de transformar la Vista Button en una complement que se pueda reutilizar y reciba 2 parámetros de entrada, una función y la Imagen.
 */
