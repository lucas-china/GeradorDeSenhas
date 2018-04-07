//
//  PasswordViewController.swift
//  SuperSenha
//
//  Created by Lucas Santana Brito on 06/04/2018.
//  Copyright © 2018 Lucas Brito. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Numero de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetter: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatorPasswords()
        
    }
    
    func generatorPasswords () {
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }

    @IBAction func generate(_ sender: UIButton) {
        generatorPasswords()
    }
    

}
