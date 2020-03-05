//: Playground - noun: a place where people can play

import UIKit
var studentGrades: [String: Double] = ["Matematica": 7.5]

var states = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo"
]

states["GO"] = "Goiaz"
//states["GO"] = "Goiás"
//print(states)

let oldGO = states.updateValue("Goiás", forKey: "GO")
print(oldGO)

let myState1 = states["AL"]
print(myState1)

if let myState = states["DF"] {
    print(myState)
}

states["GO"] = nil
print(states)

print(states.count)
let keys = Array(states.keys)
print(keys)

let values = Array(states.values)
print(values)
