//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Operadores Binary
//Operador de Atribuiçao
let gravity = 9.81
var (name, age) = ("Eric", 39)
print(name)
print(age)

//Aritimeticos: Soma (+), Subtração (-), Multiplicação (*), Divisão(/)/ Módulo (%)
//Soma
var age1 = 45
var age2 = 26
let sum = age1 + age2

//Subtração
var minus = age1 - age2

//Multiplicação
let multiply = age1 * age2

//Divisao
let division = age1 / age2

let time1: Double = 12 //Converter para um tipo unico
let time2 = 14.75
let resulTimes = time1 + time2

//Modulo: Resto da divisao
let toys = 35
let kids = 6
let moduls = toys % kids

//Operadores compostos
//age1 = age1 + age2
//print(age1)
age1 += age2
// -=, *=, /=, %=
var products = 125
var lastBuy = 22
products -= lastBuy

//Operador de comparação(sempre retornam um Bool)
//Maior que: >
let grade1 = 7.5
let grade2 = 9.8
let betterThanFirend = grade1 > grade2

//Menor que: <
let grade = 7.0
let minimumGrade = 7.0
let reproved = grade < minimumGrade

//Maior ou igual a: >=
//Menor ou igual a: <=

let approved = grade >= minimumGrade

//Igualdade: ==
let teacherName = "Eric"
let studentName = "eric"
let sameNames = teacherName == studentName
let sameNames1 = teacherName.lowercased() == studentName.lowercased()


//Desigualdade
let diferentNames = teacherName != studentName






