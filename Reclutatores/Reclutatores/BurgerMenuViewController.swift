//
//  BurgerMenuViewController.swift
//  Reclutatores
//
//  Created by Ivan Villanueva on 12/11/20.
//  Copyright © 2020 Ivan Villanueva. All rights reserved.
//

import UIKit

class BurgerMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func profileBtn(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "ProfileViewController")
        self.present(vc, animated: true, completion:
        nil)
    }
    
    @IBAction func calendarBtn(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "CalendarViewController")
        self.present(vc, animated: true, completion:
        nil)
        
    }
    
    @IBAction func futureEventsBtn(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "FutureEventsVC")
        self.present(vc, animated: true, completion:
        nil)
    }
    
    
    @IBAction func helpBtn(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "HelpViewController")
        self.present(vc, animated: true, completion:
        nil)
    }
}
