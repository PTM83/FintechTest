//
//  MachMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 04-08-24.
//

import SwiftUI

struct MachMainView: View {

    var body: some View {
        VStack {
            IconHeaderView()
        }
        .frame(maxWidth: .infinity,
               maxHeight: 160,
               alignment: .top)
        .background(CustomColors.primaryColor.toSwiftColor())
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(CustomColors.letterColor.toSwiftColor())
                .frame(width: .infinity,
                       height: 200)
                .shadow(color: CustomColors.digitColor.toSwiftColor().opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y: 5)
                .padding()
                .padding(.top, 190)
        )
        .navigationBarBackButtonHidden(true) // Esconder el botón de regresar
        .navigationBarHidden(true) // También puedes esconder toda la barra de navegación si es necesario

        Spacer()
    }
}

#Preview {
    MachMainView()
}


