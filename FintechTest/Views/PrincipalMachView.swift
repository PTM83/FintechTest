//
//  PrincipalMachView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 07-08-24.
//

import SwiftUI

struct PrincipalMachView: View {
    
    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    
    init() {
        // Personalizar la apariencia del TabView
        UITabBar.appearance().backgroundColor = UIColor.clear
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            MainBankView()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
            
            TransferView()
                .tabItem {
                    Label("Transferir", systemImage: "arrow.left.arrow.right")
                }.tag(1)
            
            QRPaymentView()
                .tabItem {
                    Label("Pago QR", systemImage:"qrcode")
                }
            
            CreditCardView()
                .tabItem {
                    Label("Tarjetas", systemImage: "creditcard")
                }
            
            InvestAccountView()
                .tabItem {
                    Label("Inversiones", systemImage: "dollarsign")
                }
        }.tint(mainColor)
    }
}


#Preview {
    PrincipalMachView()
}
