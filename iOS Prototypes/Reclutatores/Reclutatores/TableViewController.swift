//
//  TableViewController.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 11/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet var tableView: UITableView!

    var candidate = [ListOfCandidates]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        
        tableView.delegate = self
        tableView.dataSource = self
        
        candidate.append(ListOfCandidates.init("Universtario", ["Julián David Alvarez Olivera", "Juan Carlos Jimenez Jimenez"]))
        candidate.append(ListOfCandidates.init("Profesionista", ["Claudia Fernanda Rodriguez Avila", "Katia Patricia Limón Fraga"]))
        candidate.append(ListOfCandidates.init("Operativo", ["Alejandro Sosa Carrillo", "Rafael Agustín López Hernandez"]))
        candidate.append(ListOfCandidates.init("Técnico", ["Angel Ivan Villanueva Ortiz", "Alejandro Orellan Leal"]))
    }
    
    
    
    @IBAction func burgerMenu(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "BurgerMenuViewController")
        self.present(vc, animated: true, completion: nil)
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("No no, don't touch me there. This is my no no square!")
    }
}


extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return candidate.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return candidate[section].candidates?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "candidateCell", for: indexPath)
            
        cell.textLabel?.text = candidate[indexPath.section].candidates?[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return candidate[section].area
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProgressViewController") as? ProgressViewController
        vc?.title = "Progreso de candidato"
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
