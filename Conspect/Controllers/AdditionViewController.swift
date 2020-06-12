//
//  AdditionViewController.swift
//  Conspect
//
//  Created by Nikita on 6/12/20.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

protocol AdditionViewControllerDelegate {
    func saveChangingTextInTextView(_ editingText: String)
}


class AdditionViewController: UIViewController {
    
    var descriptionOfTopic: String!
    
    var delegate: AdditionViewControllerDelegate!

    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextView.text = descriptionOfTopic
        
    }
    
    
    @IBAction func backWithoutChanges() {
        dismiss(animated: true)
    }
    
    @IBAction func addTextViewChanges() {
        delegate.saveChangingTextInTextView(descriptionTextView.text)
        dismiss(animated: true)
    }
    
    

}

