//
//  checkPasswordView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 31-07-24.
//

import SwiftUI

struct CheckPasswordView: View {
    
    @Binding var enteredDigits: Array<Int>
    var topText: String
    
    var body: some View {
        
        print("CheckPasswordView body is being rendered")
        
        return VStack {
            Text(topText)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .padding(.bottom, 32)
            DigitEntryView(enteredDigits: $enteredDigits)
        }
    }
}

#Preview {
    CheckPasswordView(enteredDigits: .constant([1,2]), topText: "Test")
}
