//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class CreditCard {
    
    let number: String
    let limit: Double
    //private esconder a variavel
    private var invoiceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit = limit
    }
    
    //final - proteger metodo
    final func makePurchase(off value: Double, isInternational: Bool) -> Bool{
        let debit = isInternational ? value * (1 + iof/100) : value
        let finalValue = invoiceValue + debit
        if finalValue > limit {
            return false
        } else {
            invoiceValue = finalValue
            return true
        }
    }
    
    //Somente leitura da herença
    func getInvoce() -> Double{
        return invoiceValue
    }
    
    //variavel somente leitura
    var invoice: Double {
        return invoiceValue
    }
}

let creditCard = CreditCard(number: "1111-2222-3333-4444", limit: 5000)
creditCard.makePurchase(off: 1500, isInternational: true)

//print(creditCard.invoiceValue)


class DebitCreditCard: CreditCard {
    private var _balance: Double = 0
    var balance: Double {
        return _balance
    }
    
    func makeTransition(of value: Double) {
        _balance += value
    }
}

let debitCreditCard = DebitCreditCard(number: "2222-3333-4444-5555", limit: 5000)
debitCreditCard.makeTransition(of: 500)
debitCreditCard.makeTransition(of: -100)

print(debitCreditCard.balance)
