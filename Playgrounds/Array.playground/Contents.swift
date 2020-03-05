//: Playground - noun: a place where people can play

import UIKit

/*
    Supondo q voce fosse fazer uma festa de aniversario e fosse convidar familia e amigos
    seria meio complicado ter q armazenar em varias variaveis
*/

var name1 = "Fulano"
var name2 = "Ciclano"

var names = ["Fulano", "Ciclano", "Beltrano"]
var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]

var lotteryNumbers: [Int] = []
var phonesNumbers: [String]?

var ages: [UInt8] = [9, 7, 12, 15, 22] // Unit8
var guests = ["João", "Paula", "Alexandre", "Patricia", "Sandra"]
print(guests)
print(guests.isEmpty)

let secondGuest = guests[1]
guests[0] = "Henrique"
print(guests)

guests[0...1] = ["Eric", "Roberto", "Joana", "Bia"]
print(guests)

guests += ["Sandro", "Helena", "Elen"]
guests.append("Edina")

guests.insert("Romildo", at: 2)
print(guests)

guests.removeFirst()
guests.removeLast()
guests.remove(at: 2)
//guests.removeAll()

guests.contains("Helena")
if guests.contains("Joao") {
    print("A Helena foi convidada")
} else {
    print("Ele nao está na lista")
}
