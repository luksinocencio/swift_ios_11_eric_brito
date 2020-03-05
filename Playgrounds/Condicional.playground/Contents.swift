//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//If - Else
var hasHeadache: Bool = false
var humor: String = ""
if hasHeadache {
    humor = "Muito p... da vida"
} else {
    humor = "Felizão"
}

let number = 11
if number % 2 == 0 {
    print("Ele é par")
} else {
    print("Ele é impa")
}

var temperatura = 18
var climate = ""

if temperatura <= 0 {
    climate = "Frio pra caralho"
} else if temperatura < 14 {
    climate = "Está frio"
} else if temperatura < 21 {
    climate = "Clima agradavel"
} else if temperatura < 30 {
    climate = "Um pouco quente"
} else {
    climate = "Muuuito quente"
}

let letter = "i"
var letterType = ""
if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    letterType = "vogal"
} else {
    letterType = "consoante"
}

//switch
switch letter {
    case "a":
        letterType = "vogal"
        break
    case "e":
        letterType = "vogal"
        break
    case "i":
        letterType = "vogal"
        break
    case "o":
        letterType = "vogal"
        break
    case "u":
        letterType = "vogal"
        break
    default:
        letterType = "consoante"
}

switch letter {
    case "a", "e", "i", "o", "u":
        letterType = "vogal"
        break
    default:
        letterType = "consoante"
}

let speed = 95.0
switch speed {
    case 0.0..<20.0:
        print("Primeira marcha")
    case 20.0..<40.0:
        print("Segunda marcha")
    case 40.0..<50.0:
        print("Terceira marcha")
    case 50.0..<90.0:
        print("Quarta marcha")
    default:
        print("Quinta marcha")
}

//Closed Range Half-Closed Range
//... (closed Range)
//..< (Half-Closed Range)

let range0_10 = 0...10
let range0_9 = 0..<10

//
let firstLetter = "z"
switch firstLetter {
case "a"..."f":
    print("Voce esta no primeiro trimestre")
case "g"..."l":
    print("Voce esta no segundo trimestre")
case "m"..."r":
    print("Voce esta no terceiro trimestre")
default:
    print("Voce esta no quarto trimestre")
}


