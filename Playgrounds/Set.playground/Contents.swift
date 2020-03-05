//: Playground - noun: a place where people can play

import UIKit

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Park",
    "De volta para o futuro"
]

var movies2 = Set<String>()

movies.insert("Homem-Aranha: De volta para o lar")
movies.count
//movies.remove("Homem-Aranha: De volta para o lar")
movies.count

for movie in movies {
    print(movie)
}

if movies.contains("Matrix") {
    print("Matriz está na minha lista de filmes favoritos")
}

var myWifeMovies: Set<String> = [
    "De repente 30",
    "Mensagem para você",
    "Sintonia de Amor",
    "De volta para o futuro",
    "Jurassic Park"
]

let favoritesMovies = movies.intersection(myWifeMovies)
print(favoritesMovies)

let allMovies = movies.union(myWifeMovies)
print(allMovies)

movies = movies.subtracting(myWifeMovies)
print(movies)

let address: (type: String, name: String, number: Int, city: String, state: String, zipCode: String) = ("AV", "Paulista", 1578, "São Paulo", "SP", "01310-200")
print(address.number)
let(type, name, number, city, state, cep) = address
print(type)
print(name)

