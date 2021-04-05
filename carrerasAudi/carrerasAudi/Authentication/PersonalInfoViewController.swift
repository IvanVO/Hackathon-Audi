//
//  PersonalInfoViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 10/11/20.
//

import UIKit

class PersonalInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        
        let inicioVC = self.storyboard?.instantiateViewController(identifier: "InicioViewController") as! InicioViewController
        self.navigationController?.pushViewController(inicioVC, animated: true)
        
    }
    
}
