//
//  DigitEntryView.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 02-08-24.
//

import SwiftUI

struct DigitEntryView: View {
    @Binding var enteredDigits: [Int]
    @State private var showError: Bool = false // Evaluar este State para la vista Principal.
    @ObservedObject private var attemptManager = AttemptManager.shared
    private let userDataBase = UserDataBase()
    
    var body: some View {
        print("DigitEntryView body is being rendered")
        return VStack {
            createDigitIndicator()
            .padding(.bottom, 10)
            .onChange(of: enteredDigits) {
                handleDigitChange()
            }
            if showError {
                createErrorMessage()
            }
        }.frame(width: 300, height: 120, alignment: .top)
    }
    
    // Función que permite crear el indicador de ingreso de código
    private func createDigitIndicator() -> some View {
        HStack {
            ForEach(0..<4, id: \.self) { index in
                index < enteredDigits.count ? Image(systemName: "circle.fill") : Image(systemName: "circle")
            }
        }
    }
    
    // Función que verifica sí al ingresar los 4 dígitos el código es correcto o no.
    private func handleDigitChange() {
        
        if enteredDigits.count == 4 {
            if attemptManager.attempCount < attemptManager.maxAttemps {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    verifyPassword()
                    }
            }
        } else if showError && enteredDigits.count > 0 {
            showError = false // Resetea el error y elimina el mensaje
        }
    }
    
    // Función que renderiza el mensaje de Error
    private func createErrorMessage() -> some View {
        Text(attemptManager.attempCount >= attemptManager.maxAttemps ? "Demasiados intentos fallidos. Bloqueado." : "Has ingresado un PIN incorrecto. \nTe quedan \(attemptManager.diffAttemps) intentos")
            .foregroundColor(.white)
            .font(.system(size: 18,
                          weight: .ultraLight,
                          design: .serif))
            .frame(width: 300, height: 60, alignment: .center)
            .background(Color.red)
            .cornerRadius(10)
            .multilineTextAlignment(.center)
    }
    
    // Función que permite verficiar si el código es correcto o no.
    private func verifyPassword() {
        if userDataBase.VerifyCredentials(password: enteredDigits) {
            print("Authentication successful")
            // Aquí puedes manejar lo que sucede si la autenticación es exitosa, como navegar a otra vista
        } else {
            print("Authentication failed")
            showError = true
            attemptManager.attempCount += 1
            enteredDigits.removeAll()
        }
    }
}

struct DigitEntryView_Previews: PreviewProvider {
    static var previews: some View {
        DigitEntryView(enteredDigits: .constant([1, 2]))
    }
}
