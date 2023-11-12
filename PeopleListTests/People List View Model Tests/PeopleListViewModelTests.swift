//
//  PeopleListViewModelTests.swift
//  PeopleListTests
//
//  Created by Flávio Silvério on 12/11/2023.
//

import XCTest
@testable import PeopleList

final class PeopleListViewModelTests: XCTestCase {
    
    var sut: PeopleListViewModel?
    
    override func setUp() {
        super.setUp()
        
        sut = PeopleListViewModel(people: [
            Person(name: "John Stewart", age: 25),
            Person(name: "Martha George", age: 18),
            Person(name: "Mike Smith", age: 15)
        ])
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
}
