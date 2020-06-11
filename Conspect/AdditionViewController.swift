//
//  AdditionViewController.swift
//  Conspect
//
//  Created by Виталий Сосин on 11.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class AdditionViewController: UIViewController {
    
    @IBOutlet weak var buttonApplyOutlet: UIButton!
    
    @IBOutlet weak var subjectsTextField: UITextField!
    @IBOutlet weak var topicTextViewOutlet: UITextView!
    
    @IBOutlet weak var discriptionStackView: UIStackView!
    @IBOutlet weak var discriptionTextField: UITextField!
    @IBOutlet weak var discriptionTextViewOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundsCorners()
    }
    
    
    @IBAction func buttonAdd(_ sender: UIBarButtonItem) {
    }
    @IBAction func buttonCancel(_ sender: UIBarButtonItem) {
    }
    @IBAction func buttonApplyAction() {
    }
    
    private func roundsCorners() {
        buttonApplyOutlet.layer.cornerRadius = buttonApplyOutlet.frame.height / 4
    }

}

