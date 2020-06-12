//
//  DescriptionViewController.swift
//  Conspect
//
//  Created by Nikita on 6/12/20.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit




//  для теста
var swiftBook = Subject(name: "Swiftbook",
                        topic: [Topic(name: "Constraint", description: "dwwddjfkjvjjeijvjjekkdhjrjvkjekkv"),
                                Topic(name: "Delegation", description: "dekgkrekgkerkgkrekgrekkger"),
                                Topic(name: "SomeTopic", description: "dwefjejrjejjnjer")])


var russianLanguge = Subject(name: "Русский язык",
                             topic: [Topic(name: "Предожения", description: "Простые и сложные"),
                                     Topic(name: "Диепричастный оборот", description: "dwdwdwdwdwd"),
                                     Topic(name: "Наречие", description: "dwdwwddwdwdwd")])






protocol DescriptionViewControllerDelegate {
    func setNewHeaderAndFooter(header: String, footer: String)
}

class DescriptionViewController: UIViewController {

    var subjects: [Subject] =  [swiftBook, russianLanguge]
    
    var subjectIndex = 1
    var topicIndex = 1
    
    //var delegate: DescriptionViewControllerDelegate!
    
    
    //MARK: IB Outlets
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var fontStepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.text = subjects[subjectIndex].topic[topicIndex].name
        
        descriptionTextView.text = subjects[subjectIndex].topic[topicIndex].description
        descriptionTextView.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        
        fontStepper.tintColor = .blue
        fontStepper.value = 17
        fontStepper.minimumValue = 12
        fontStepper.maximumValue = 25
        
        
    }
    
    
    //MARK: IB Actions
    @IBAction func goBack() {
        subjects[subjectIndex].topic[topicIndex].name = headerLabel.text ?? ""
        subjects[subjectIndex].topic[topicIndex].description = descriptionTextView.text
        //delegate.setNewHeaderAndFooter(header: headerLabel.text ?? "", footer: descriptionTextView.text)
        
        print("Dismiss\n")
        print("Topic name:\n\(subjects[subjectIndex].topic[topicIndex].name)\n")
        print("Topic description:\n\(subjects[subjectIndex].topic[topicIndex].description)")
        //  dismiss(animated: true)
    }
    
    @IBAction func changeFontSize(_ sender: UIStepper) {
        let fontName = descriptionTextView.font?.fontName
        let fontSize = CGFloat(sender.value)
        descriptionTextView.font = UIFont(name: fontName!, size: fontSize)
    }
    
    
    
     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let additionVC = segue.destination as? AdditionViewController else { return }
        additionVC.descriptionTextFieldSource = headerLabel.text
        additionVC.descriptionTextViewOutletSource = descriptionTextView.text
        additionVC.showContents = 3
        additionVC.delegate = self
     }
     
}

extension DescriptionViewController: AdditionViewControllerDelegate {
    func saveChangingDescriptionAndHeader(description: String, header: String) {
        headerLabel.text = header
        descriptionTextView.text = description
    }
    
    
}


