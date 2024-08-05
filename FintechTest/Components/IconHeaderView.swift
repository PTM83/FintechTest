//
//  IconHeaderView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 04-08-24.
//

import SwiftUI

struct IconHeaderView: View {
    
    var body: some View {
        HStack(alignment: .center) {
            Button(action: {},
                   label: {
                Image(systemName: "text.alignleft")
                    .font(.system(size: 25))
            })
            
            Circle()
                .stroke(CustomColors.letterColor.toSwiftColor(),
                        lineWidth: 2)
                .frame(width: 40, height: 40)
            
            Text("Hola PABLO")
                .font(.system(size: 25))
            
            Spacer()
            
            
            ForEach(IconApp.iconHeader, id: \.self) { icon in
                Image(systemName: icon)
            }
            .font(.system(size: 25))
            
        }
        .padding()
        .padding(.bottom, 50)
        .foregroundColor(CustomColors.letterColor.toSwiftColor())
        .background(CustomColors.primaryColor.toSwiftColor())
    }
}

#Preview {
    IconHeaderView()
}

/*
 Nota: Ver la forma de transformar la Vista Button en una complement que se pueda reutilizar y reciba 2 parámetros de entrada, una función y la Imagen.
 */
