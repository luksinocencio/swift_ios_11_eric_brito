//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var rg: Int = 3476228
var driverLicense: Int?
//driverLicense = 64578288

if let driverL = driverLicense {
    print("A minha carteira de motorista é: ", driverL)
} else {
    print("Não possuo carteira de motorista")
}

let addressNumber = Int("100")
if let addresNumber = addressNumber {
    print(addressNumber)
}

//Nil coalscing operator (Operador de coalescencia nula)
let number: String = "578"
let adressNumber2 = Int(number) ?? 0

//Implicit Unwrapped Optionals
var name: String!
name = "Joaozinho"
print(name.count)
if name != nil {
    print(name)
}


