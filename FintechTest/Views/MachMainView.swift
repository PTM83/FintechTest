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
            BlockInformation()
                .overlay(
                    VStack {
                        HStack {
                            Text("Mi cuenta MACH")
                            Spacer()
                            Button(action: {
                                
                            }, 
                                   label: {
                                Image(systemName: IconApp.sharedInformation).rotationEffect(.degrees(-30))
                                    .foregroundColor(.black)
                            })
                        }.padding(20)
                            .font(.system(size: 18, weight: .light, design: .monospaced))
                            .tracking(-1.9)
                        Spacer()
                    }
                )
                .padding(.top, 190)
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


