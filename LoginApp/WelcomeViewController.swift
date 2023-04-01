//
//  WelcomViewController.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 01.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var login: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcom, \(login ?? "")!"


    }

}
