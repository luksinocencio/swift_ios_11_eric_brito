//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func devide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

typealias Op = (Int, Int) -> Int

func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int {
    return operation(a, b)
}

let result = applyOperation(10, 20, operation: sum)

func getOperation(_ operation: String) -> Op {
    switch operation {
        case "soma":
            return sum
        case "subtracao":
            return subtract
        case "multiplicacao":
            return multiply
        default:
            return devide
    }
}

var operation = getOperation("subtracao")
operation(30, 15)
