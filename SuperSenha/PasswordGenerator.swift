//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Oscar Veroneze Junior on 30/04/19.
//  Copyright © 2019 Junior Veroneze. All rights reserved.
//

import Foundation

class PasswordGenerator {
    var numberOfCharacters: Int
    var userLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacters = "!@#$%ˆ&*()_-+=~|`]}[{':;?/<>.,"
    private let numbers = "0123456789"
    
    init(numberOfCharacters: Int, userLetters: Bool, useNumbers: Bool, useCapitalLetters: Bool, useSpecialCharacters: Bool) {
        var numchars = min(numberOfCharacters, 16)
        numchars = max(numchars, 1)
        
        self.numberOfCharacters = numchars
        self.userLetters = userLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCharacters = useSpecialCharacters
    }
    
    func generate(total: Int) -> [String] {
        passwords.removeAll()
        
        var universe: String = ""
        
        if userLetters {
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
            
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            
            passwords.append(password)
        }
        
        return passwords
    }
}
