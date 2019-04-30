//
//  ViewController.swift
//  SuperSenha
//
//  Created by Oscar Veroneze Junior on 29/04/19.
//  Copyright © 2019 Junior Veroneze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldTotalPasswords: UITextField!
    @IBOutlet weak var textFieldNumberOfCharacters: UITextField!
    @IBOutlet weak var switchLetters: UISwitch!
    @IBOutlet weak var switchNumbers: UISwitch!
    @IBOutlet weak var switchCapitalLetters: UISwitch!
    @IBOutlet weak var switchSpecialCharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(textFieldTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfCharacters = Int(textFieldNumberOfCharacters.text!) {
            passwordsViewController.numberOfCharacter = numberOfCharacters
        }
        
        passwordsViewController.useLetters = switchLetters.isOn
        passwordsViewController.useNumbers = switchNumbers.isOn
        passwordsViewController.useCapitalLetters = switchCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = switchSpecialCharacters.isOn
        view.endEditing(true) //Remove o foco da view e fecha o teclado caso um textField esteja selecionado
    }
    
}

