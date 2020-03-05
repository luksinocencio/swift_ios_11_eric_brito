//: Playground - noun: a place where people can play

import UIKit

class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound() {
        print("...")
    }
}

//Herança
class Dog: Animal {
    func run() {
        print("O cachorro está correndo")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    func fly() {
        if canFly {
            print("O papagaio está voando")
        } else {
            print("Este pássaro não voa")
        }
    }
    //Designated Initializer
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    //Convencice Inializar
    convenience init(color: String, breed: String) {
        self.init(color: color, gender:"M", breed: breed, canFly: true)
    }
}

let billy = Dog(color: "preto e branco", gender: "M" , breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)

//1) Desginated Initializer deve chamar o outro designated da sua classe base
//2) Um Convience initializer deve chamar outro initialize da mesma classe
//3) Um Convience initializer deve chamar, no final, um designated initializer

billy.emiteSound()
zeCarioca.emiteSound()
