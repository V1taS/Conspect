//
//  SubjectsTableViewController.swift
//  Conspect
//
//  Created by Vladimir on 13/06/2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class SubjectsTableViewController: UITableViewController {
    
    var subjects: [Subject] = DataManager.shared.subjects

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath)

        cell.textLabel?.text = subjects[indexPath.row].name

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "additionSegue":
            let additionVC = segue.destination as! AdditionViewController
            additionVC.showContents = 1
        case "topicSegue" :
            guard let indexPath = tableView.indexPathForSelectedRow  else { return }
            let topicVC = segue.destination as! TopicsTableViewController
            topicVC.indexOfSubjects = indexPath.row
        default:
            print(segue.identifier ?? "")
        }
    }
}
