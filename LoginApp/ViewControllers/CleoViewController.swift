//
//  CleoViewController.swift
//  LoginApp
//
//  Created by Sergei Bakhmatov on 05.04.2023.
//

import UIKit

final class CleoViewController: UIViewController {
    
    @IBOutlet var catPhotoImageView: UIImageView!
    @IBOutlet var catFacePhotoImageView: UIImageView!
    
    @IBOutlet var petNameLabel: UILabel!
    @IBOutlet var petAgeLabel: UILabel!
    
    var user: User!
    
    private let colorOne = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    private let colorTwo = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: colorOne, bottomCollor: colorTwo)
        
        catPhotoImageView.layer.cornerRadius = catPhotoImageView.frame.height / 2
        catFacePhotoImageView.layer.cornerRadius = catFacePhotoImageView.frame.height / 2
        
        catPhotoImageView.image = UIImage(named: user.person.pet.photoOne)
        catFacePhotoImageView.image = UIImage(named: user.person.pet.photoTwo)
        
        petNameLabel.text = user.person.pet.name
        petAgeLabel.text = user.person.pet.age
        
    }
    

}
