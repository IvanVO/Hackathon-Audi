//
//  ProgressViewController.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 11/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import UIKit

class ProgressViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String = "Julian David Castro Olivera"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        nameLabel.text = name
    }
    
    @IBAction func goBackToCandidates(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func phaseOneBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PhaseOneVC")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func pahseTwoBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PhaseTwoVC")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func phaseThreeBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PhaseThreeVC")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func phaseFourBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PhaseFourVC")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func phaseFiveBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PhaseFiveVC")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func viewProfile(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CompleteProfileVC")
        vc?.title = "Perfil de candidato"
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
}
