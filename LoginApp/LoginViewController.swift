//
//  ViewController.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 01.04.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }


}

