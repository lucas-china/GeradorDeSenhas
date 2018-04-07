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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func generate(_ sender: UIButton) {
    }
    

}
