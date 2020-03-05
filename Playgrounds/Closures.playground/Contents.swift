//: Playground - noun: a place where people can play

import UIKit
import Foundation
//Closures
/*
 {(parametro: String) -> String in
    bloco de codigo
    ...
    return String
 }
 */

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int{
    return operation(a, b)
}

calculate(10, 20, operation: sum)

calculate(10, 20, operation: {(a: Int, b: Int) -> Int in
    return a + b
})

calculate(10, 20, operation: {(a, b) -> Int in
    return a + b
})

calculate(10, 20, operation: {a, b in
    return a + b
})

calculate(10, 20, operation: {
    return $0 + $1
})

calculate(10, 20, operation: { $0 + $1 })

calculate(10, 20, operation: + )


var names = [
    "   Alessandra  ",
    "   Jéssica     ",
    "   Anderson    ",
    "   Demys       ",
    "   Harley      "
]
print(names)

//Map
let correctNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correctNames)

let uppercasedNames = correctNames.map({$0.uppercased()})
print(uppercasedNames)

let inocencio = correctNames.map({$0 + " Inocencio"})
print(inocencio)

//Filter
let newNames = correctNames.filter({$0.count < 7})
print(newNames)

//Reduce
let sumLetters = correctNames.reduce(0, {$0 + $1.count})
print(sumLetters)
