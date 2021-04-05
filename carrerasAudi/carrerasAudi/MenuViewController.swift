//
//  MenuViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 13/11/20.
//

import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func progreso(_ sender: Any) {
        
        let progresoVC = self.storyboard?.instantiateViewController(withIdentifier: "ProgresoViewController") as! ProgresoViewController
        
        self.navigationController?.pushViewController(progresoVC, animated: true)
        
    }
    
}
