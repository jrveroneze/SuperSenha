//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Oscar Veroneze Junior on 30/04/19.
//  Copyright © 2019 Junior Veroneze. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    @IBOutlet weak var textViewPasswords: UITextView!
    var numberOfCharacter: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacter, userLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePasswords()
    }
    
    func generatePasswords() {
        textViewPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        textViewPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            textViewPasswords.text.append(password + "\n\n")
        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
}
