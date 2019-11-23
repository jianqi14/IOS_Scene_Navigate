//
//  MenuViewController.swift
//  ToDoList
//
//  Created by Jian Qi on 11/22/19.
//  Copyright © 2019 Jian Qi. All rights reserved.
//

import UIKit

enum MenuType: Int{
    case Home
    case Tasks
    case Reminders
    case Scheduled
    case Calender
}

class MenuViewController: UITableViewController {
    
    var openMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let MenuType = MenuType(rawValue: indexPath.row) else{return}
        dismiss(animated: true){ [weak self] in
            print("Menu Choosen: \(MenuType)")
            self?.openMenuType?(MenuType)
        }
    }
}
