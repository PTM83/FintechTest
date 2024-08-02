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
    
    // Inicializar la class()
    private let userDataBase = UserDataBase()
    @State var showError: Bool = false
    
    var body: some View {
        
        print("CheckPasswordView body is being rendered")
                
        return VStack {
            Text(topText)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .padding(.bottom, 32)
            
            HStack {
                ForEach(0..<4, id: \.self) { index in
                    index < enteredDigits.count ? Image(systemName: "circle.fill") : Image(systemName: "circle")
                }
            }
            .onChange(of: enteredDigits) {
                if enteredDigits.count == 4 {
                    verifyPassword()
                }
            }
            if showError {
                Text("Credenciales Inválidas")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 30, alignment: .center)
                    .background(Color.red)
                    .cornerRadius(20)
            }
        }
    }
    
    private func verifyPassword() {
        if userDataBase.VerifyCredentials(password: enteredDigits) {
            print("Authentication successful")
            // Aquí puedes manejar lo que sucede si la autenticación es exitosa, como navegar a otra vista
        } else {
            print("Authentication failed")
            showError = true
            enteredDigits.removeAll()
        }
    }
    
}

#Preview {
    CheckPasswordView(enteredDigits: .constant([1,2]), topText: "Test")
}
