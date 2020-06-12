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
    
    var showContents = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hidenContents()
        roundsCorners()
        showContents(num: showContents)
    }
    
    @IBAction func buttonCancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    @IBAction func buttonApplyAction() {
    }
    
    private func hidenContents() {
        subjectsTextField.isHidden = true
        topicTextViewOutlet.isHidden = true
        
        discriptionStackView.isHidden = true
    }
    
     func showContents(num: Int) {
        switch num {
        case 1:
            subjectsTextField.isHidden = false
        case 2:
            topicTextViewOutlet.isHidden = false
        default:
            discriptionStackView.isHidden = false
        }
    }
    
    private func roundsCorners() {
        buttonApplyOutlet.layer.cornerRadius = buttonApplyOutlet.frame.height / 4
    }

}

