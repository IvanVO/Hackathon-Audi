//
//  PhaseThreeVC.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 12/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import UIKit

class PhaseThreeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func goBackToProgress(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
}
