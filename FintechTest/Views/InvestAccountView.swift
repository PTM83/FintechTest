//
//  InvestAccountView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 06-08-24.
//

import SwiftUI

struct InvestAccountView: View {
    
    var body: some View {
        ToolBarView(nameView: "Inversiones", iconView: "questionmark.circle") {
            TestView() // Modificar la vista
        } content: {
            Text("Invest Account View 💵")
        }
        
    }
}

#Preview {
    InvestAccountView()
}
