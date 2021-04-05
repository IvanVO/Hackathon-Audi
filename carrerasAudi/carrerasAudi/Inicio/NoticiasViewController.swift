//
//  NoticiasViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 10/11/20.
//

import UIKit

class NoticiasViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.currentPage = 0
        
    }
    
    @IBAction func openInicio(_ sender: Any) {
        
        let inicioVC = self.storyboard?.instantiateViewController(withIdentifier: "InicioViewController") as! InicioViewController
        
        self.navigationController?.pushViewController(inicioVC, animated: true)
        
    }
    

}
