//
//  DescriptionViewController.swift
//  Conspect
//
//  Created by Vladimir on 12/06/2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    
    var subjects: [Subject] = DataManager.shared.subjects
    var indexOfSubjects: Int!
    var indexOfTopics: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = subjects[indexOfSubjects].topics[indexOfTopics].name
        descriptionTextView.text = subjects[indexOfSubjects].topics[indexOfTopics].description
    }
    
}
