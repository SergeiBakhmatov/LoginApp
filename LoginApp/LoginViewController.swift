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
    
    @IBAction func logInButtonTapped() {
        guard let login = loginTF.text,
              login == "Alex",
              let password = passwordTF.text,
              password == "1234" else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
        
        performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showHint(withTitle: "Oops!", andMessage: "Your name is Alex")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showHint(withTitle: "Oops!", andMessage: "Your password is 1234")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        dismiss(animated: true)
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func showHint(withTitle title: String, andMessage message: String) {
        let hint = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        hint.addAction(okAction)
        present(hint, animated: true)
    }

}

