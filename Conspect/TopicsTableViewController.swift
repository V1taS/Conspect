//
//  TopicsTableViewController.swift
//  Conspect
//
//  Created by Vladimir on 12/06/2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class TopicsTableViewController: UITableViewController {

    var subjects: [Subject] = []
    var indexOfSubjects: Int!
    
    private var topics: [Topic] = []
    private var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if subjects.count == 0 {
            indexOfSubjects = 0
            subjects = [Subject(name: "Swift",
                                topics: [Topic(name: "Constraint", description: "Описание Constraint"),
                                         Topic(name: "Delegate", description: "Описание Delegate")
            ])]
        }
        
        name = subjects[indexOfSubjects].name
        topics = subjects[indexOfSubjects].topics
        self.title = name
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
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "descriptionSegue", sender: indexPath.row)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "descriptionSegue":
            let descriptionVC = segue.destination as! DescriptionViewController
            descriptionVC.subjects = subjects
            descriptionVC.indexOfSubjects = indexOfSubjects
            descriptionVC.indexOfTopics = sender as? Int
        case "additionSegue":
            let descriptionVC = segue.destination as! AdditionViewController
            descriptionVC.subjects = subjects
            descriptionVC.indexOfSubjects = indexOfSubjects
            descriptionVC.indexOfTopics = sender as? Int
        default:
            print(segue.identifier ?? "")
        }
    }
    
    @IBAction func unwindToTopicViewController(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as! AdditionViewController
        subjects = sourceViewController.subjects
        name = subjects[indexOfSubjects].name
        topics = subjects[indexOfSubjects].topics
        self.title = name
        self.tableView.reloadData()
    }
    
}
