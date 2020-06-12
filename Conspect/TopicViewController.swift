//
//  TopicViewController.swift
//  Conspect
//
//  Created by Виталий Сосин on 12.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TopicViewController" {
            let AdditionVC = segue.destination as! AdditionViewController
            AdditionVC.showContents = 2
        }
    }

}
