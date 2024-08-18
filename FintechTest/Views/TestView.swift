//
//  TestView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 08-08-24.


import SwiftUI

struct TestView: View {
    
//    @Binding var viewID: Int
    @EnvironmentObject var viewRouter: ViewRouter
    var mainColor:Color = CustomColors.primaryColor.toSwiftColor()
    var letterColor:Color = CustomColors.letterColor.toSwiftColor()
    
    var body: some View {
        
        VStack{
            Text("Test View \(viewRouter.viewID)")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .foregroundStyle(letterColor)
                .frame(maxWidth: .infinity)
                .frame(height: 600)
                .background(mainColor)
            
            // TabView para navegar entre vistas
            TabView(selection: $viewRouter.viewID) {
                Button("Ir a Inicio") {
                    viewRouter.viewID = 0
                }
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
                .tag(0)
                
                Button("Ir a Transferir") {
                    viewRouter.viewID = 1
                }
                .tabItem {
                    Label("Transferir", systemImage: "arrow.left.arrow.right")
                }
                .tag(1)
                
                Button("Ir a Pago QR") {
                    viewRouter.viewID = 2
                }
                .tabItem {
                    Label("Pago QR", systemImage: "qrcode")
                }
                .tag(2)
                
                Button("Ir a Tarjetas") {
                    viewRouter.viewID = 3
                }
                .tabItem {
                    Label("Tarjetas", systemImage: "creditcard")
                }
                .tag(3)
                
                Button("Ir a Inversiones") {
                    viewRouter.viewID = 4
                }
                .tabItem {
                    Label("Inversiones", systemImage: "dollarsign")
                }
                .tag(4)
            }
            .frame(height: 100) // Ajusta la altura del TabView según sea necesario
            .customizeNavigatorBar(primaryColor: UIColor(mainColor))
            .navigationBarBackButtonHidden(true)
            .tint(mainColor)
            .preferredColorScheme(.light)
            
        }
        .customizeNavigatorBar(primaryColor: UIColor(mainColor))
        .navigationBarBackButtonHidden(false)
        .navigationTitle("Centro de ayuda")
        .toolbarBackground(letterColor, for: .automatic)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
//    TestView(viewID: .constant(0))
    TestView()
        .environmentObject(ViewRouter())
}

//import SwiftUI
//
//struct TestView: View {
//    
//    @EnvironmentObject var viewRouter: ViewRouter
//    var mainColor: Color = CustomColors.primaryColor.toSwiftColor()
//    var letterColor: Color = CustomColors.letterColor.toSwiftColor()
//    
//    var body: some View {
//        
//        VStack {
//            Text("Test View \(viewRouter.viewID)")
//                .font(.system(size: 50, weight: .bold, design: .rounded))
//                .foregroundStyle(letterColor)
//                .frame(maxWidth: .infinity)
//                .frame(height: 600)
//                .background(mainColor)
//            
//            HStack(spacing: 20) {
//                Button("Ir a Inicio") {
//                    viewRouter.viewID = 0
//                }
//                
//                Button("Ir a Transferir") {
//                    viewRouter.viewID = 1
//                }
//                
//                Button("Ir a Pago QR") {
//                    viewRouter.viewID = 2
//                }
//                
//                Button("Ir a Tarjetas") {
//                    viewRouter.viewID = 3
//                }
//                
//                Button("Ir a Inversiones") {
//                    viewRouter.viewID = 4
//                }
//            }
//            .frame(height: 100)
//            .customizeNavigatorBar(primaryColor: UIColor(mainColor))
//            .navigationBarBackButtonHidden(false)
//            .tint(mainColor)
//            .preferredColorScheme(.light)
//            
//        }
//        .customizeNavigatorBar(primaryColor: UIColor(mainColor))
//        .navigationBarBackButtonHidden(false)
//        .navigationTitle("Centro de ayuda")
//        .toolbarBackground(letterColor, for: .automatic)
//        .toolbarBackground(.visible, for: .navigationBar)
//    }
//}
//
//#Preview {
//    TestView()
//        .environmentObject(ViewRouter())
//}
