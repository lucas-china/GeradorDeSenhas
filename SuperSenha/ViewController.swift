//
//  ViewController.swift
//  SuperSenha
//
//  Created by Lucas Santana Brito on 06/04/2018.
//  Copyright © 2018 Lucas Brito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordViewController = segue.destination as! PasswordViewController
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            passwordViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordViewController.numberOfCharacters = numberOfCharacters
        }
        passwordViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordViewController.useSpecialCharacters = swSpecialCharacters.isOn
        passwordViewController.useNumbers = swNumbers.isOn
        passwordViewController.useLetters = swLetters.isOn
        view.endEditing(true)
    }


}

