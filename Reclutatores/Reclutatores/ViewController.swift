//
//  ViewController.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 11/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func logIn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "TableViewController") as! TableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
