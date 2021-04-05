//
//  PhaseFiveVC.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 12/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import UIKit

class PhaseFiveVC: UIViewController {

    @IBOutlet weak var appointment: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        appointment.layer.borderWidth = 1
        appointment.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func goBackToProgress(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    
}
