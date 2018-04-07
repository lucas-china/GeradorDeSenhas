//
//  PasswordsGenerator.swift
//  SuperSenha
//
//  Created by Lucas Santana Brito on 06/04/2018.
//  Copyright © 2018 Lucas Brito. All rights reserved.
//

import Foundation

class PasswordGenerator {
    var numberOfCharacters: Int
    var useLetter: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacters = "?/:;'~`[{]}-_)(&*ˆ%$#@!|=+<>.,"
    private let numbers = "1234567890"
    
    init(numberOfCharacters: Int, useLetter: Bool, useNumbers: Bool, useCapitalLetters: Bool, useSpecialCharacters: Bool) {
        
        var numchars = min(numberOfCharacters, 16)
        numchars = max(numchars, 1)
        
        self.numberOfCharacters = numchars
        self.useCapitalLetters = useCapitalLetters
        self.useLetter = useLetter
        self.useNumbers = useNumbers
        self.useSpecialCharacters = useSpecialCharacters
    }
    
    func generate(total: Int) -> [String]{
        passwords.removeAll()
        var universe: String = ""
        if useLetter {
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
        
        let universeArray = Array(universe) // array de caracteres
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(universe.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        return passwords
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
