//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Operador Logico
var boughtBanana: Bool = true
var boughtTomato: Bool = true
var boughtApple: Bool = false

var isHappy = boughtApple && boughtBanana && boughtTomato

true && true
true && false
false && false
false && true

//Operador OU (OR): ||

var likesMeat = false
var likesBeer = false
var caInviteBarbecue = likesBeer || likesMeat

true || false
true || true
false || false
false || true

var grade1 = 8.5
var grade2 = 7.0
let result = (grade1 + grade2) / 2

//Operador de negaçao
var knowSwift = true
var enrolSwiftCourse = !knowSwift

//Operador Ternario
var grade = 7.95
var gradeResult = (grade >= 7.0) ? "Aprovado" : "Reprovado"

var number = 11
let type = (11 % 2 == 0) ? "Par" : "Ímpar"
