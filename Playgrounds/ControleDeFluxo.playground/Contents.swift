//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

for day in 1...30 {
    print("Estou no dia \(day) de Setembro")
}

for _ in 1...5 {
    print("Dedique-se ao curso de Desenvolvimento iOS 11")
}

let studentes = [
    "João Francisco",
    "Pedro Henrique",
    "Gustavo Oliveira",
    "Janaina Santos",
    "Franciso José"
]

for student in studentes {
    print(student)
}

let name = "Lucas Inocencio de Albuquerque"
//for letter in name.characters {
//    print(letter)
//}

for letter in name {
    print(letter)
}

for (index, letter) in name.enumerated() {
    print(index, letter)
}

let people = [
    "Paulo": 25,
    "Renata": 18,
    "Kleber": 33,
    "Eric": 39,
    "Carol": 36
]

for person in people {
    print(person.key, person.value)
}

for(name, age) in people {
    print(name, age)
}

//While
var life = 10
while life > 0 {
    print("O jogador está com \(life) vidas")
    life = life - 1
}

var megaSena: [Int] = []
while megaSena.count < 6 {
    let number = Int(arc4random_uniform(60) + 1)
    if !megaSena.contains(number) {
        megaSena.append(number)
    }
}

print(megaSena.sorted())

var tries = 0
var diceNumber = 0
repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1)
} while diceNumber != 6
print("Voce tirou 6 aoós \(tries) tentativas")

let grades = [10.0, 9.0, 8.5, 7.0, 9.5, 5.0, -1.0, 6.5, 10.0, 14.0, 8.0]
for grade in grades {
    print(grade)
    if grade < 0.0 || grade > 10.0 {
        print("nota inválida")
        break
    }
}
