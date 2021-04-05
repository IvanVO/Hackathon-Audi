//
//  ProfileViewController.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 13/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var updateProfile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateProfile.layer.borderWidth = 1
        updateProfile.layer.borderColor = UIColor.black.cgColor
    }

}
