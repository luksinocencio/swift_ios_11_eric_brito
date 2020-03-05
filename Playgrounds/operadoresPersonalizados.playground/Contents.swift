//: Playground - noun: a place where people can play

import UIKit
import Foundation
//Operadores Personalizados
/*
    Unarios -> Operam somente em 1 operando
    prefix
    postfix
 
    Binarios -> Operam em 2 operando
    infix
 
    //Prefix
 */

prefix operator <|
prefix func <| (rhs: [Int]) -> [Int] {
    let result = rhs.map({$0 - 1})
    return result
}

let ages = [9, 25, 30, 42, 7, 18]
let lastYears = <|ages

//postifix
postfix operator ❗️
postfix func ❗️(lhs: Int) -> Int {
    var result = 1
    if lhs < 2 {
        return result
    }
    for i in 2...lhs {
        result *= i
    }
    return result
}
3❗️

infix operator ---
func --- (lhs: Int, rhs:Int) -> [Int] {
    return Array(rhs...lhs).reversed()
}

30---12

infix operator >-<
func >-< (total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randomNumber) {
            result.append(randomNumber)
        }
    }
    return result.sorted()
}
print(6>-<60)
print(5>-<80)
print("Lotofacil", 15>-<25)
