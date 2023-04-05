//
//  WelcomViewController.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 01.04.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    private let colorOne = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    private let colorTwo = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: colorOne, bottomCollor: colorTwo)
        
        welcomeLabel.text = "Welcom, \(user.login)!"

    }

}

extension UIView {
    
    func addVerticalGradientLayer(topColor: UIColor, bottomCollor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomCollor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
        
    }
}
