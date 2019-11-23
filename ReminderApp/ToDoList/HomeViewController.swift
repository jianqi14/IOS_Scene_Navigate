//
//  ViewController.swift
//  ToDoList
//
//  Created by Jian Qi on 11/22/19.
//  Copyright © 2019 Jian Qi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else {return}
        
        menuViewController.openMenuType = { menuType in
            self.transitionToNew(menuType: menuType)
        }
        
        present(menuViewController, animated: true)
    }
    
    func transitionToNew( menuType: MenuType){
        let title = String(describing: menuType).capitalized
        self.title = title
    }
    
}

