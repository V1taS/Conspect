//
//  SubjectsTableViewController.swift
//  Conspect
//
//  Created by Виталий Сосин on 12.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class SubjectsTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SubjectsTableViewController" {
            let AdditionVC = segue.destination as! AdditionViewController
            AdditionVC.showContents = 1
        }
    }

}
