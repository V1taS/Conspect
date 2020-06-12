//
//  DiscriptionViewController.swift
//  Conspect
//
//  Created by Виталий Сосин on 12.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class DiscriptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DiscriptionViewController" {
            let AdditionVC = segue.destination as! AdditionViewController
            AdditionVC.showContents = 3
        }
    }

}
