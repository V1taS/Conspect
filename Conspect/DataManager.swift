//
//  DataManager.swift
//  Conspect
//
//  Created by Macbook on 12.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var subjects: [Subject] = []
    
    private init() {
        self.subjects = self.getCurrentSubjects()
    }
    
    private func getCurrentSubjects() -> [Subject] {
    
        let swift = Subject(name: "Swift",
                            topics: [Topic(name: "Constraints",
                                           description: "Информация о Constraints"),
                                     Topic(name: "Delegation",
                                           description: "Информация о Delegation"),
                                     Topic(name: "SomeTopic",
                                           description: "Информация о SomeTopic")])
        
        let russianLanguage = Subject(name: "Русский язык",
                                     topics: [Topic(name: "Предложения",
                                                    description: "Информация о простых и сложных предложениях"),
                                              Topic(name: "Диепричастный оборот",
                                                    description: "Информация о диепричастном обороте"),
                                              Topic(name: "Наречие",
                                                    description: "Информация о наречии")])
        
        return [swift, russianLanguage]
    }
    
    func addTopic(name: String, description: String) {
        print(#function)
        print("\(name) - \(description)")
    }
    
    func addSubject(name: String, topics: [Topic]) {
        print(#function)
        print("\(name)")
    }
}
