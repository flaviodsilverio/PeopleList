//
//  PeopleListViewModel.swift
//  PeopleList
//
//  Created by Flávio Silvério on 09/11/2023.
//

import Foundation

class PeopleListViewModel: ObservableObject {
    @Published var people: [Person] = []

    init(people: [Person] = PeopleListViewModel.randomPeople()) {
        self.people = people
    }
    
    var numberOfPeople: Int {
        return people.count
    }

    func person(at index: Int) -> Person? {
        return people[index]
    }

    func addPerson(_ person: Person) {
        people.append(person)
    }

    func removePerson(at index: Int) {
        print("removed")
        people.remove(at: index)
    }
    
    static func randomPeople() -> [Person] {
        var people = [Person]()
        
        let firstNames = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph", "Charles", "Thomas", "Mary", "Patricia", "Jennifer", "Linda", "Elizabeth", "Barbara", "Susan", "Jessica", "Sarah", "Karen"]
        
        let lastNames = ["Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor"]
        
        repeat {
            let firstNameIndex = Int.random(in: 0...firstNames.count - 1)
            let lastNameIndex = Int.random(in: 0...lastNames.count - 1)
            let age = Int.random(in: 1...100)
            people.append(Person(name: "\(firstNames[firstNameIndex]) \(lastNames[lastNameIndex])", age: age))
        } while(people.count < 1000)
        
        return people
    }
}
