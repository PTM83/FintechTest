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
        }
        .frame(maxWidth: .infinity,
               maxHeight: 195,
               alignment: .top)
        .background(CustomColors.primaryColor.toSwiftColor())
        .overlay(
            BlockInformation(frameWidth: 360, frameHeight: 170)
                .padding(.top, 122)
        )
        .navigationBarBackButtonHidden(true) // Esconder el botón de regresar
        .navigationBarHidden(true) // También puedes esconder toda la barra de navegación si es necesario
        
        Spacer()
            .safeAreaInset(edge: .bottom, spacing: 0) {
                // Vista del Footer
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
        }
    }
}
