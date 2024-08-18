//
//  CreditCardView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 06-08-24.
//

import SwiftUI

struct CreditCardView: View {
    
//    @Binding var viewID: Int
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        ToolBarView(nameView:"Mis tarjetas", iconView: "questionmark.circle") {
            TestView()
        } content: {
            Text("Credit Card 💳")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    CreditCardView()
}
