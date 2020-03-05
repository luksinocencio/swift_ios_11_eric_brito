//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Int, Float, Double, Character, String, Bool

//Booleanos (verdadeiro ou falso)
var isFirstTime: Bool = true
var isSecondTime: Bool = false

//Inteiros
var temperature: Int = 12

//Unit //Unsigned
var age: UInt = 39

//Float -> 32Bit
var dolar: Float = 3.5

//Double -> 64Bit
var crazyNumber: Double = 10000000.89858585

//Character
var gender: Character = "M" // "F"
var enter: Character = "\n" // Enter
var aspas: Character = "\""

//String
var newGender = "M"
let studentName = "\"Dr.\" Paulo Henrique Bastos"
print(studentName)
let firstName = "Eric"
let lastName = "Brito"
//let fullName = firstName + " " + lastName
//interpolaçao de string
let fullName = "\(firstName) \(lastName) - Idade: \(age) anos"
print(fullName)
let text = """
    Olá, espero que esteja gostando do curso.
        Ainda tem muito mais pela frente
    Fim!!
"""
print(text)
