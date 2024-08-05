//
//  FooterMachView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 05-08-24.
//

import SwiftUI

struct FooterMachView: View {
    var ifPusshed: Bool = true
    var body: some View {
        HStack {
            ForEach(IconApp.footerIcon, id:\.0) { key, value in
                Rectangle()
                    .frame(width: 68, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .overlay(
                        Button(action: {
                            //DEBEN IR A DIFERENTES VISTAS
                        },
                               label: {
                                   VStack{
                                       Image(systemName: value)
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width:22, height:22)
                                           .padding(.bottom, 5)
                                       Text(key)
                                       
                                   }.padding(1)
                               })
                    ).opacity(ifPusshed ? 1 : 0.5) // Modificar por que depende si se encuentra en la ventana o no.
            }
        }
            .font(.system(size: 12))
            .foregroundColor(CustomColors.primaryColor.toSwiftColor())
    }
}

#Preview {
    FooterMachView()
}
