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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func generate(_ sender: UIButton) {
    }
}
