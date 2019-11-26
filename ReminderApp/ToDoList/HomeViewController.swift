//
//  ViewController.swift
//  ToDoList
//
//  Created by Jian Qi on 11/22/19.
//  Copyright © 2019 Jian Qi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var topView: UIView?

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
        
        topView?.removeFromSuperview()
        switch menuType {
        case .Home:
            let view = UIView()
            //view.backgroundColor = .lightGray
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
            
        case .Tasks:
            let view = UIView()
            view.backgroundColor = UIColor(red: 109/255, green: 135/255, blue: 214/255, alpha: 1.0) /* #6d87d6 */
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
            
        case .Reminders:
            let view = UIView()
            view.backgroundColor = UIColor(red: 135/255, green: 83/255, blue: 163/255, alpha: 1.0) /* #8753a3 */
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
            
        case .Scheduled:
            let view = UIView()
            view.backgroundColor = UIColor(red: 65/255, green: 127/255, blue: 69/255, alpha: 1.0) /* #417f45 */
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
            
        case .Calender:
            let view = UIView()
            view.backgroundColor = UIColor(red: 135/255, green: 68/255, blue: 70/255, alpha: 1.0) /* #874446 */
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
        }
    }
    
}

