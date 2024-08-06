//
//  MachMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 04-08-24.
//

import SwiftUI

struct MachMainView: View {

    var body: some View {
        ZStack {
            IconHeaderView()
            Spacer()
        }
        .frame(maxWidth: .infinity,
               maxHeight: 195,
               alignment: .top)
        .background(CustomColors.primaryColor.toSwiftColor())
        .overlay(
            BlockInformation(frameWidth: 360, frameHeight: 200)
                .padding(.top, 135)
        )
//        .navigationBarBackButtonHidden(true) // Esconder el botón de regresar
        .navigationBarHidden(true) // También puedes esconder toda la barra de navegación si es necesario
        
        // Slide de Suscripciones
        
        Spacer(minLength: 80)
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(CustomColors.primaryColor.toSwiftColor())
            .frame(width: 360, height: 100)
            .shadow(color: CustomColors.digitColor.toSwiftColor().opacity(0.5), radius: 10, y: 5)
        CarruselMainView(textTitle: "¿Que quieres hacer hoy?")
            .padding(20)
        
        Spacer()
        // Vista del Footer
            .safeAreaInset(edge: .bottom, spacing: 0) {
                FooterMachView()
        }
        
    }
}

#Preview {
    MachMainView()
}



struct HeadBlockName: View {
    
    var PrincipalText: String
    var underlineText: String
    
    var body: some View {
        VStack(alignment:.leading, spacing: 4) {
            Text(PrincipalText)
            Text(underlineText)
                .font(.system(size: 12, weight: .thin, design: .rounded))
                .tracking(0.4)
        }
    }
}

