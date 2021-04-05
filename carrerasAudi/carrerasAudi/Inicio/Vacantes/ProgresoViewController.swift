//
//  ProgresoViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 11/11/20.
//

import UIKit

class ProgresoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        
        _ = navigationController?.popViewController(animated: true)
        
    }

    @IBAction func openFase(_ sender: UIButton) {
        
        switch sender.tag {
        
            case 0:
                
                let faseVC = self.storyboard?.instantiateViewController(identifier: "Fase1ViewController") as! Fase1ViewController
                self.navigationController?.pushViewController(faseVC, animated: true)
                
            case 1:
                
                let faseVC = self.storyboard?.instantiateViewController(identifier: "Fase2ViewController") as! Fase2ViewController
                self.navigationController?.pushViewController(faseVC, animated: true)
                
            case 2:
                
                let faseVC = self.storyboard?.instantiateViewController(identifier: "Fase3ViewController") as! Fase3ViewController
                self.navigationController?.pushViewController(faseVC, animated: true)
                
            case 3:
                
                let faseVC = self.storyboard?.instantiateViewController(identifier: "Fase4ViewController") as! Fase4ViewController
                self.navigationController?.pushViewController(faseVC, animated: true)
                
            case 4:
                
                let faseVC = self.storyboard?.instantiateViewController(identifier: "Fase5ViewController") as! Fase5ViewController
                self.navigationController?.pushViewController(faseVC, animated: true)
                
            default:
                print("Ahh caray...")
                
        }
        
    }
    
}
