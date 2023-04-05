//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 05.04.2023.
//

import UIKit

final class BiographyViewController: UIViewController {
    
    @IBOutlet var biographyTextView: UITextView!
    
    var user: User!
    
    private let colorOne = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    private let colorTwo = UIColor(red: 0, green: 0, blue: 1, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: colorOne, bottomCollor: colorTwo)
        
        biographyTextView.text = user.person.biography

    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
}
