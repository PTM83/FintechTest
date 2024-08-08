//
//  InfoPrincipalBlockMainView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 07-08-24.
//

import SwiftUI

struct InfoPrincipalBlockMainView: View {
    var body: some View {
        VStack {
            
        /*
         Parte del código que va toda la información
         a desplegar en la vista inicial
         */
            VStack(alignment: .leading, spacing: 12){
            
                HStack(alignment: .firstTextBaseline){
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Mi cuenta MACH")
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                        Text("Cuenta Corriente BCI 7771 12 345 678")
                            .font(.system(size: 12, weight: .regular, design: .rounded))
                            .tracking(0.4)
                    }
                    Spacer()
                    
                    Button(action: {
                        // Debe ir a una Vista
                    }, label: {
                        Image(systemName: "person")
                    })
                }.foregroundColor(.black)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Saldo disponible")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(CustomColors.primaryColor.toSwiftColor())
                    Text("$ 15.953")
                        .font(.system(size: 38, weight: .bold, design: .rounded))
                        .foregroundColor(CustomColors.primaryColor.toSwiftColor())
                }
                /*
                 Parte del código que se despliega o no si el usuario
                 empuja hacia abajo la pantalla
                 */
                Divider()
                    .background(Color.black)
                
                Button(action: {
                    // Acción del botón
                }) {
                    Text("Ver mis movimientos")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(CustomColors.primaryColor.toSwiftColor())
                }
                
            }
            .padding(15)

        }
//        .background(.blue) // VStack Global

    }
}

#Preview {
    InfoPrincipalBlockMainView()
}
