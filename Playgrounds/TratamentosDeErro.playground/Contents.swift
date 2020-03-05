//: Playground - noun: a place where people can play

import UIKit

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName != "Lucas" {
            throw LoginError.wrongLogin
        }
        if password != "123456" {
            throw LoginError.wrongPassword
        }
        return true
    } else {
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return false
}

do {
     let loginResult = try login(userName: "Lucas", password: "123456")
} catch LoginError.wrongLogin {
    print("Nome do usuario inválido")
} catch LoginError.wrongPassword {
    print("Senha errada")
} catch LoginError.noInternetConnection {
    print("Não tem conexão com a internet")
}
