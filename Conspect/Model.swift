//
//  Model.swift
//  Conspect
//
//  Created by Macbook on 12.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import Foundation

struct Subject {
    let name: String
    let topics: [Topic]
}

struct Topic {
    let name: String
    let description: String
}
