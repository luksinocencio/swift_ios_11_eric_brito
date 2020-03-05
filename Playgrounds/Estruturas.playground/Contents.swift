//: Playground - noun: a place where people can play

import UIKit

let age: Int = 20
let name: String = "Lucas"

struct Person {
    var name: String
    var age: Int
    
    func sayHello() {
        print("Olá")
    }
    
}

var person = Person(name: "Lucas", age: 24)
person.sayHello()
person.name = "João"
print(person.name)

