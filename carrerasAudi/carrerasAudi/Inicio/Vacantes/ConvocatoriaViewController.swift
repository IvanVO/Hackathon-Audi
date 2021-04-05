//
//  ConvocatoriaViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 13/11/20.
//

import UIKit

class ConvocatoriaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openProgreso(_ sender: Any) {
        
        let progresoVC = self.storyboard?.instantiateViewController(identifier: "ProgresoViewController") as! ProgresoViewController
        
        self.navigationController?.pushViewController(progresoVC, animated: true)
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        _ = navigationController?.popViewController(animated: true)
        
    }
    
}
