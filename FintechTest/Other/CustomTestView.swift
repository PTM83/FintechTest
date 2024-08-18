//
//  CustomTestView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 16-08-24.
//

import SwiftUI

struct CustomTestView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue)
            
            Text("Test View")
                .font(.system(size: 70, weight: .bold, design: .rounded))
           
        }
        
    }
}

#Preview {
    CustomTestView()
}
