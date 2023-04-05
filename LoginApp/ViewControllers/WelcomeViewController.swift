//
//  WelcomViewController.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 01.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorOne = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
        let colorTwo = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeLabel.text = "Welcom, \(user.login)!"

    }

}
