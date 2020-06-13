//
//  TopicsTableViewController.swift
//  Conspect
//
//  Created by Vladimir on 12/06/2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class TopicsTableViewController: UITableViewController {

    var subjects: [Subject] = DataManager.shared.subjects
    var indexOfSubjects: Int = 0
    
    private var topics: [Topic] = []
    private var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // заглушка для отладки автомномно
        if subjects.count == 0 {
            indexOfSubjects = 0
            subjects = [Subject(name: "Swift",
                                topics: [Topic(name: "Constraint", description: "Описание Constraint"),
                                         Topic(name: "Delegate", description: "Описание Delegate")
            ])]
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        name = subjects[indexOfSubjects].name
        topics = subjects[indexOfSubjects].topics
        self.title = name        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)

        cell.textLabel?.text = topics[indexPath.row].name
        
        return cell
    }
            
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "descriptionSegue":
            guard let indexPath = tableView.indexPathForSelectedRow  else { return }
            let descriptionVC = segue.destination as! DescriptionViewController
            descriptionVC.indexOfSubjects = indexOfSubjects
            descriptionVC.indexOfTopics = indexPath.row
            descriptionVC.delegate = self
        case "additionSegue":
            let additionVC = segue.destination as! AdditionViewController
            additionVC.indexOfSubjects = indexOfSubjects
            additionVC.showContents = 2
            additionVC.delegateTopic = self
        default:
            print(segue.identifier ?? "")
        }
    }
}

extension TopicsTableViewController: AdditionTopicViewControllerDelegate {
    func returnAdditionData(indexOfSubjects: Int, name: String, description: String) {
        self.subjects = DataManager.shared.subjects
        self.name = subjects[indexOfSubjects].name
        self.topics = subjects[indexOfSubjects].topics
        self.title = self.name
        tableView.reloadData()
    }    
}

extension TopicsTableViewController: DescriptionViewControllerDelegate {
    func setNewNameOfCell(nameOfCell: String) {
        self.subjects = DataManager.shared.subjects
        self.name = subjects[indexOfSubjects].name
        self.topics = subjects[indexOfSubjects].topics
        self.title = self.name
        tableView.reloadData()
    }
}


