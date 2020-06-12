//
//  AdditionViewController.swift
//  Conspect
//
//  Created by Nikita on 6/12/20.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

protocol AdditionViewControllerDelegate {
    func saveChangingDescriptionAndHeader(description: String, header: String)
}


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
    
    

}

