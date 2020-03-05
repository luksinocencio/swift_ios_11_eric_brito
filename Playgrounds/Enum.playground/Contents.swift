//: Playground - noun: a place where people can play

import UIKit

enum CompassPoint {
    case north
    case east
    case west
    case south
}

var direction = CompassPoint.north
var direction2: CompassPoint = .north

direction = .south

enum SeatPosition: String {
    case aisle = "corredor", middle = "meio", window = "janela"
}

var passengerSeat = SeatPosition.window
switch passengerSeat {
    case .aisle:
        print("O passageiro está sentado no corredor")
    case .middle:
        print("O passageiro está sentado no meio")
    case .window:
        print("O passageiro está sentado no janela")
}
print(passengerSeat.rawValue)

enum Mounth: Int {
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case dezember
}
print(Mounth.august.rawValue)

//Valores Associados

enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let measure: Measure = .size(width: 0.6, height: 1.71 )   //.weight(32) //.age(24)
switch measure {
    case .weight (let weight):
        print("O seu peso é: ")
    case .age (let age):
        print("O seu idade é: ")
    case .size(let size):
        print("As suas medidas de tamanho são \(size.width)m de largura e \(size.height)m de altura")
}
