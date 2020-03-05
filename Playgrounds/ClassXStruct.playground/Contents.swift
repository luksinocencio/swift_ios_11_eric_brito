//: Playground - noun: a place where people can play

/*
Semelhanças
    Ambas possuem propriedades para armazenar valores
    Ambas podem implementar metodos para adicionar mais funcionalidades
    Podem trabalhar com subscripts
    Definem inicializadores para configurar seus valores iniciais
    Podem ser estendidas para expandir suas funcionalidades
    E Tambem Podem implementar protocolos
 */

/*
Diferença entre Classes e Struct
    Somente classes trabalham herança, ou seja, podem herdar e serem herdadas
    Type Casting só funciona com classes esteja consumindo
    Possuem, além de construtores, os métodos desconstrutores, que permitem remover
    Permitem que eu possa ter mais de uma referencia para a mesma classe
 */

struct Student {
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var student1 = Student(name: "Zeca", age: 22)
var student2 = student1

student1.name = "Alisson"
student1.age = 25

print(student2.name, student2.age)

/*============================================*/

var person1 = Person(name: "Zeca", age: 22)
var person2 = person1
person1.name = "Alisson"
person1.age = 33

print(person2.name, person2.age)




