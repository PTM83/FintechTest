//
//  MachMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 04-08-24.
//

import SwiftUI

struct MachMainView: View {
    
    var mainColor:Color = CustomColors.primaryColor.toSwiftColor()
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea() // Asegura que el fondo sea blanco
            VStack {
                IconHeaderView()
                    .safeAreaInset(edge: .top, alignment: .leading) {
                        Spacer().frame(height: 0) // Asegura que el header esté en el top
                    }
                Spacer()
            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: 195,
               alignment: .top)
        .background()
        .overlay(
            BlockInformation(frameWidth: 360, frameHeight: 200)
                .padding(.top, 145)
        )
//        .navigationBarBackButtonHidden(true) // Esconder el botón de regresar
        .navigationBarHidden(true) // También puedes esconder toda la barra de navegación si es necesario
        
        // Slide de Suscripciones
        
        Spacer(minLength: 90)
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(mainColor)
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

