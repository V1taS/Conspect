//
//  AdditionViewController.swift
//  Conspect
//
<<<<<<< HEAD
//  Created by Виталий Сосин on 11.06.2020.
=======
//  Created by Nikita on 6/12/20.
>>>>>>> BegletskiyNA
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

protocol AdditionViewControllerDelegate {
    func saveChangingDescriptionAndHeader(description: String, header: String)
}

<<<<<<< HEAD
class AdditionViewController: UIViewController {
    
    @IBOutlet weak var buttonApplyOutlet: UIButton!
    
    @IBOutlet weak var subjectsTextField: UITextField!
    @IBOutlet weak var topicTextViewOutlet: UITextView!
    
    @IBOutlet weak var discriptionStackView: UIStackView!
    @IBOutlet weak var discriptionTextField: UITextField!
    @IBOutlet weak var discriptionTextViewOutlet: UITextView!
    
    var descriptionTextFieldSource: String!
    var descriptionTextViewOutletSource: String!
    
    var indexOfSubjects: Int!
    var showContents = 0
    
    var delegate: AdditionViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
        hidenContents()
        roundsCorners()
        showContents(showContents)
    }
    
    @IBAction func buttonCancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    @IBAction func buttonApplyAction() {
        pressButtonChoice(showContents)
    }
    
    private func hidenContents() {
        subjectsTextField.isHidden = true
        topicTextViewOutlet.isHidden = true
        
        discriptionStackView.isHidden = true
    }
    
    private func pressButtonChoice(_ showContents: Int) {
        switch showContents {
        case 1:
            print("")
        case 2:
            
            dismiss(animated: true)
        default:
            delegate.saveChangingDescriptionAndHeader(description: discriptionTextViewOutlet.text, header: discriptionTextField.text ?? "")
        }
    }
    
     func showContents(_ showContents: Int) {
        switch showContents {
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
=======

class AdditionViewController: UIViewController {
    
    var descriptionTextFieldSource: String!
    var descriptionTextViewOutletSource: String!
    var showContents: Int!
    
    
    
    var delegate: AdditionViewControllerDelegate!

    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextView.text = descriptionTextFieldSource
        
    }
    
    
    @IBAction func backWithoutChanges() {
        dismiss(animated: true)
    }
    
    @IBAction func addTextViewChanges() {
        delegate.saveChangingDescriptionAndHeader(description: descriptionTextView.text, header: "dwdw")
        dismiss(animated: true)
    }
    
    
>>>>>>> BegletskiyNA

}

