//: Playground - noun: a place where people can play

import UIKit

//func nomeDaFuncao(parametro: Tipo) -> TipoDeRetorno {
//    return TipoDeRetorno
//}

func sayHello() {
    print("Hello")
}
sayHello()

func say(message: String) {
    print(message)
}
say(message: "Bom dia!!")

func say(message: String, to: String) -> String {
    return message + " " + to
}
say(message: "Olá", to: "Maria")

let sentence = say(message: "Olá", to: "Caroline")
print(sentence)

func sum(_ a: Int, b: Int) -> Int {
    return a + b
}
print(sum(10, b: 20))

func multiply(_ number1: Int, by number2: Int) -> Int {
    return number1 * number2
}
multiply(20, by: 10)

func sum(_ initalValue: Int, withValues values: Int...) -> Int {
    var result = initalValue
    for value in values {
        result += value
    }
    return result
}

print( sum(2, withValues: 7, 9, 9, 10, 23))

let studentdata = "Lucas Inocencio de Albuquerque:24"

func getStundentInfo(_ data: String) -> (name: String, age: Int) {
    let info = data.components(separatedBy: ":")
    let studentName = info[0]
    let studentAge = Int(info[1])
    return (studentName, studentAge!)
}

let student = getStundentInfo(studentdata)
print(student.name)
print(student.age)
