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
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

}
