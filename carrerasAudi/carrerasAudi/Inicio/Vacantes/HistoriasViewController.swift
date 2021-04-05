//
//  HistoriasViewController.swift
//  carrerasAudi
//
//  Created by Alejandro Sosa Carrillo on 11/11/20.
//

import UIKit

class HistoriasViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var carrerasScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var carreraLabel: UILabel!
    
    // ------------------------------------------------------------------------- Títulos
    
    let operativosArray = ["Sector administrativo", "Operador de planta"]
    
    let profesionistasArray = ["Planificación", "Control de calidad", "Recursos Humanos", "Producción", "Funciones de coordinación"]
    
    let universitariosArray = ["Programa EMA", "Carrera Dual", "Practicantes"]
    
    let tecnicosArray = ["Mecatrónica", "Mecánica automotriz", "Mecánica de carrocería", "Mecánica de herramientas", "Mecánica de producción"]
    
    // ------------------------------------------------------------------------ Imágenes
    
    let operativosImagesArray = [UIImage.init(named: "admin"),
                                 UIImage.init(named: "planta")]
    
    let profesionistasImagesArray = [UIImage.init(named: "planificacion"),
                         UIImage.init(named: "calidad"),
                         UIImage.init(named: "recursosHumanos"),
                         UIImage.init(named: "produccion"),
                         UIImage.init(named: "coordinacion")]
    
    let universitariosImagesArray = [UIImage.init(named: "ema"),
                                 UIImage.init(named: "dual"),
                                 UIImage.init(named: "practicantes")]
    
    let tecnicosImagesArray = [UIImage.init(named: "mecatronica"),
                                     UIImage.init(named: "mecaAuto"),
                                     UIImage.init(named: "mecanicaCarroceria"),
                                     UIImage.init(named: "mecanicaTools"),
                                     UIImage.init(named: "mecanicaProd")]
    
    // ------------------------------------------------------------------- Descripciones
    
    let operativosDescriptionArray = [UIImage.init(named: "adminDescripcion"),
                                      UIImage.init(named: "plantaDescripcion")]
    
    let profesionistasDescriptionArray = [UIImage.init(named: "planificacionDescripcion"),
                                          UIImage.init(named: "calidadDescripcion"),
                                          UIImage.init(named: "recursosHumanosDescripcion"),
                                          UIImage.init(named: "produccionDescripcion"),
                                          UIImage.init(named: "coordinaciónDescripcion")]
    
    let universitariosDescriptionArray = [UIImage.init(named: "emaDescripcion"),
                                          UIImage.init(named: "dualDescripcion"),
                                          UIImage.init(named: "practicantesDescripcion")]
    
    let tecnicosDescriptionArray = [UIImage.init(named: "mecatronicaDescripcion"),
                                    UIImage.init(named: "mecaAutoDescripcion"),
                                    UIImage.init(named: "mecanicaCarroceriaDescripcion"),
                                    UIImage.init(named: "mecanicaToolsDescripcion"),
                                    UIImage.init(named: "mecanicaProdDescripcion")]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        switch VacantesViewController.vacante {
            case .operativo:
                
                pageControl.numberOfPages = operativosArray.count
                initializeScrollView(operativosArray, operativosImagesArray, operativosDescriptionArray)
                
            case .profesionista:
                
                pageControl.numberOfPages = profesionistasArray.count
                initializeScrollView(profesionistasArray, profesionistasImagesArray, profesionistasDescriptionArray)
                
            case .universitario:
                
                pageControl.numberOfPages = universitariosArray.count
                initializeScrollView(universitariosArray, universitariosImagesArray, tecnicosDescriptionArray)
                
            case .tecnico:
                
                pageControl.numberOfPages = tecnicosArray.count
                initializeScrollView(tecnicosArray, tecnicosImagesArray, tecnicosDescriptionArray)
        }
        
        // ----------------------------------------- Create scroll view with all images
        
        self.view.addSubview(pageControl)
        
        carrerasScrollView.delegate = self
        
        pageControl.addTarget(self, action: #selector(self.changePage(sender:)), for: UIControl.Event.valueChanged)
        
    }
    
    func initializeScrollView(_ carrerasArray: [String], _ imagesArray: [UIImage?], _ descriptionsArray: [UIImage?]) {
        
        for i in 0..<imagesArray.count {
            
            let imageView = UIImageView()
            let descripcionView = UIImageView()
            imageView.image = imagesArray[i]
            descripcionView.image = descriptionsArray[i]
            descripcionView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.carrerasScrollView.frame.width, height: self.carrerasScrollView.frame.height/2)
            descripcionView.frame = CGRect(x: xPosition, y: self.carrerasScrollView.frame.height/2, width: self.carrerasScrollView.frame.width, height: self.carrerasScrollView.frame.height/2)
            
            carrerasScrollView.contentSize.width = carrerasScrollView.frame.width * CGFloat(i+1)
            
            carrerasScrollView.addSubview(imageView)
            carrerasScrollView.addSubview(descripcionView)
            
        }
        
        carreraLabel.text = carrerasArray[pageControl.currentPage]
        
    }
    
    @objc func changePage(sender: AnyObject) -> () {
            let x = CGFloat(pageControl.currentPage) * carrerasScrollView.frame.size.width
            carrerasScrollView.setContentOffset(CGPoint(x:x, y:0), animated: true)
        
        switch VacantesViewController.vacante {
            case .operativo:
                
                carreraLabel.text = operativosArray[pageControl.currentPage]
                
            case .profesionista:
                
                carreraLabel.text = profesionistasArray[pageControl.currentPage]
                
            case .universitario:
                
                carreraLabel.text = universitariosArray[pageControl.currentPage]
                
            case .tecnico:
                
                carreraLabel.text = tecnicosArray[pageControl.currentPage]
        }
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {

            let pageNumber = round(scrollView.contentOffset.x / carrerasScrollView.frame.size.width)
            pageControl.currentPage = Int(pageNumber)
        
        switch VacantesViewController.vacante {
            case .operativo:
                
                carreraLabel.text = operativosArray[pageControl.currentPage]
                
            case .profesionista:
                
                carreraLabel.text = profesionistasArray[pageControl.currentPage]
                
            case .universitario:
                
                carreraLabel.text = universitariosArray[pageControl.currentPage]
                
            case .tecnico:
                
                carreraLabel.text = tecnicosArray[pageControl.currentPage]
        }
        
    }
    
    @IBAction func back(_ sender: Any) {
   
        _ = navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func registrarse(_ sender: Any) {
        
        let progresoVC = self.storyboard?.instantiateViewController(identifier: "ConvocatoriaViewController") as! ConvocatoriaViewController
        
        self.navigationController?.pushViewController(progresoVC, animated: true)
        
    }
    
}
