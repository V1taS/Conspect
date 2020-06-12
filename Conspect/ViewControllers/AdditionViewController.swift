//
//  AdditionViewController.swift
//  Conspect
//
//  Created by Vladimir on 12/06/2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class AdditionViewController: UIViewController {

    var subjects: [Subject] = DataManager.shared.subjects
    var indexOfSubjects: Int!
    var indexOfTopics: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButton() {
        print("Add some topic")
        DataManager.shared.addTopic(name: "New Name", description: "New description")
    }
    
    @IBAction func cancelButton() {
        dismiss(animated: true)
    }
    
}
