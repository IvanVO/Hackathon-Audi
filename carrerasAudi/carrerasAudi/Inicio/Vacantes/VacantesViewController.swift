//
//  VacantesViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 11/11/20.
//

import UIKit

class VacantesViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    enum Vacante {
        case operativo
        case profesionista
        case universitario
        case tecnico
    }
    
    static var vacante : Vacante = .operativo // Por defecto
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.currentPage = 2
        
    }
    
    @IBAction func openInicio(_ sender: Any) {
        
        let inicioVC = self.storyboard?.instantiateViewController(withIdentifier: "InicioViewController") as! InicioViewController
        
        // Swipe to the left
        let transition:CATransition = CATransition()
                transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        
        self.navigationController!.view.layer.add(transition, forKey: kCATransition)

        self.navigationController?.pushViewController(inicioVC, animated: true)
        
    }
    
    @IBAction func openHistorias(_ sender: UIButton) {
        
        switch sender.tag {
            case 0:
                VacantesViewController.vacante = .operativo
                //print("Personal Operativo")
            case 1:
                VacantesViewController.vacante = .profesionista
                //print("Profesionistas")
            case 2:
                VacantesViewController.vacante = .universitario
                //print("Universitarios")
            case 3:
                VacantesViewController.vacante = .tecnico
                //print("Carreras Técnicas")
            default:
                print("Ah caray...")
        }
        
        let historiasVC = self.storyboard?.instantiateViewController(withIdentifier: "HistoriasViewController") as! HistoriasViewController
        
        self.navigationController?.pushViewController(historiasVC, animated: true)
    
    }
}
