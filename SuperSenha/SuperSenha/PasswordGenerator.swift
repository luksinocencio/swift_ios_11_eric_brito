//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Lucas Inocencio on 20/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import Foundation

class PasswordGenerator {
    var numberOfCharacter: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuwvxyz"
    private let specialCharacters = "!@#$%ˆ&*()_-+=~`|[{]}':;?/>.<,"
    private let numbers = "0123456789"
    
    init ( numberOfCharacter: Int, useLetters: Bool ,useNumbers: Bool, useCapitalLetters: Bool, useSpecialCharacters: Bool) {
        
        var numchars = min(numberOfCharacter, 16)
        numchars = max(numchars, 1)
        
        self.useSpecialCharacters = useSpecialCharacters
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.numberOfCharacter = numchars
        
    }
    
    func generate(total: Int) -> [String] {
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        
        if useNumbers {
            universe += numbers
        }
        
        if useSpecialCharacters {
            universe += specialCharacters
        }
        
        if useCapitalLetters {
            universe += letters.uppercased()
        }
        
        let universeArray = Array(universe)
        
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacter {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        return passwords
    }
}
