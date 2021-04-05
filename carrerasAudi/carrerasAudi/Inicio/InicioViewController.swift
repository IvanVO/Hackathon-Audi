//
//  InicioViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 10/11/20.
//

import UIKit

class InicioViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.currentPage = 1
        
    }
        
    @IBAction func openNews(_ sender: Any) {
        
        let newsVC = self.storyboard?.instantiateViewController(withIdentifier: "NoticiasViewController") as! NoticiasViewController
        
        // Swipe to the left
        let transition:CATransition = CATransition()
                transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        
        self.navigationController!.view.layer.add(transition, forKey: kCATransition)

        self.navigationController?.pushViewController(newsVC, animated: true)
        
    }
    
    @IBAction func openVacantes(_ sender: Any) {
        
        let vacantesVC = self.storyboard?.instantiateViewController(withIdentifier: "VacantesViewController") as! VacantesViewController
        
        self.navigationController?.pushViewController(vacantesVC, animated: true)
        
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        let menuVC = self.storyboard?.instantiateViewController(identifier: "MenuViewController") as! MenuViewController
        
        self.navigationController?.present(menuVC, animated: true, completion: nil)
        
    }
    
    @IBAction func openNotificaciones(_ sender: Any) {
        
        let notificacionesVC = self.storyboard?.instantiateViewController(identifier: "NotificacionesViewController") as! NotificacionesViewController
        
        self.navigationController?.present(notificacionesVC, animated: true, completion: nil)
        
    }
    
}
