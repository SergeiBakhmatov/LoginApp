//
//  SergeiViewController.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 05.04.2023.
//

import UIKit

final class SergeiViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var organizationLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView!
    
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
        
        super.title = "\(user.person.name) \(user.person.surname)"
        
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        photoImageView.image = UIImage(named: user.person.photo)
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        organizationLabel.text = user.person.organization
        departmentLabel.text = user.person.department
        positionLabel.text = user.person.position
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let biographyVC = navigationVC.topViewController as? BiographyViewController else { return }
        biographyVC.user = user
    }
    
}
