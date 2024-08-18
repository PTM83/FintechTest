//
//  PrincipalMachView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 07-08-24.
//

//import SwiftUI
//
//struct PrincipalMachView: View {
//    
//    @State private var viewID: Int = 0
//    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
//    
//    init() {
//        // Personalizar la apariencia del TabView
//        UITabBar.appearance().backgroundColor = UIColor.clear
//        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
//        UITabBar.appearance().barTintColor = UIColor.white
//    }
//    
//    var body: some View {
//        TabView(selection: $viewID) {
//            BankMainView(viewID: $viewID)
//                .tabItem {
//                    Label("Inicio", systemImage: "house")
//                }
//                .tag(0)
//            
//            TransferView(viewID: $viewID)
//                .tabItem {
//                    Label("Transferir", systemImage: "arrow.left.arrow.right")
//                }
//                .tag(1)
//            
//            QRPaymentView()
//                .tabItem {
//                    Label("Pago QR", systemImage:"qrcode")
//                }
//                .tag(2)
//            
//            CreditCardView(viewID: $viewID)
//                .tabItem {
//                    Label("Tarjetas", systemImage: "creditcard")
//                }
//                .tag(3)
//            
//            InvestAccountView(viewID: $viewID)
//                .tabItem {
//                    Label("Inversiones", systemImage: "dollarsign")
//                }
//                .tag(4)
//
//        }
//        .customizeNavigatorBar(primaryColor: UIColor(mainColor))
//        .navigationBarBackButtonHidden(true)
//        .tint(mainColor)
//        .preferredColorScheme(.light)
//    }
//}
//
//#Preview {
//    PrincipalMachView()
//}

/*
 [14062024]
 
 Se crea un viewID en forma de State, con la finalidad de ir pasando esta data por cada vista.
 */

import SwiftUI

struct PrincipalMachView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
    
    init() {
        // Personalizar la apariencia del TabView
        UITabBar.appearance().backgroundColor = UIColor.clear
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        TabView(selection: $viewRouter.viewID) {
            BankMainView()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
                .tag(0)
            
            TransferView()
                .tabItem {
                    Label("Transferir", systemImage: "arrow.left.arrow.right")
                }
                .tag(1)
            
            QRPaymentView()
                .tabItem {
                    Label("Pago QR", systemImage:"qrcode")
                }
                .tag(2)
            
            CreditCardView()
                .tabItem {
                    Label("Tarjetas", systemImage: "creditcard")
                }
                .tag(3)
            
            InvestAccountView()
                .tabItem {
                    Label("Inversiones", systemImage: "dollarsign")
                }
                .tag(4)
        }
        .customizeNavigatorBar(primaryColor: UIColor(mainColor))
        .navigationBarBackButtonHidden(true)
        .tint(mainColor)
        .preferredColorScheme(.light)
    }
}

#Preview {
    PrincipalMachView()
        .environmentObject(ViewRouter())
}
