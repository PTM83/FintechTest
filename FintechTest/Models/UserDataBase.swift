//
//  UserDataBase.swift
//  FintechTest
//
//  Created by Pablo Andrés Torres Montes on 01-08-24.
//

import Foundation

class UserDataBase {
    /// Lista de credenciales de usuarios almacenadas
    
    private var user: UserCredentials?
    
    // Se procede a inicializar la class que contiene datos del usuario que proviene de la llamada a la Base de Datos
    
    init() {
        //Se simula usuario de la base de datos
        user = UserCredentials(mail:"prueba@prueba.cl",
                               cellNumber: "56912345678",
                               password: [1,2,3,4]
        )
    }
    
    /// Función que verifica si la contraseña es correcta
    
    func VerifyCredentials(password: [Int]) -> Bool {
        if let user = user {
            return user.password == password
        }
        return false
    }
    
    /// Método para obtener el correo electrónico del usuario
    func getUserMail() -> String? {
        return user?.mail
    }
    
    /// Método para obtener el número de celular del usuario
    func getUserCellNumber() -> String? {
        return user?.cellNumber
    }
    
    /// Método para obtener el número de celular del usuario
    func getUserPassword() -> [Int]? {
        return user?.password
    }
    
    /// Método para obtener la información completa del usuario
    func getUserData() -> UserCredentials? {
        return user
    }
}
