//
//  LoginViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 10/11/20.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Hide navigation bar
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    @IBAction func login(_ sender: Any) {
        
        let inicioVC = self.storyboard?.instantiateViewController(identifier: "InicioViewController") as! InicioViewController
        self.navigationController?.pushViewController(inicioVC, animated: true)
        
    }
    
    @IBAction func register(_ sender: Any) {
        
        let registerVC = self.storyboard?.instantiateViewController(identifier: "PersonalInfoViewController") as! PersonalInfoViewController
        self.navigationController?.pushViewController(registerVC, animated: true)

    }

}
