//
//  Person.swift
//  PeopleList
//
//  Created by Flávio Silvério on 09/11/2023.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
    // Add more properties as needed
}
