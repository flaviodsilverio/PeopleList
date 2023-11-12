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
    
    func testRemovingAPersonDecreasesTheArraySize() {
        XCTAssertEqual(sut?.numberOfPeople, 3)
        sut?.removePerson(at: 0)
        XCTAssertEqual(sut?.numberOfPeople, 2)
    }
    
    func testCountingPeopleReturnsTheCorrectNumber() {
        XCTAssertTrue(sut?.numberOfPeople == 3)
    }
    
    func testGettingAPersonReturnsTheCorrectPerson() {
        let person = sut?.person(at: 1)
        XCTAssertEqual(person?.name, "Martha George")
    }
    
    func testAddingAPErsonIncreasesTheArraySize() {
        XCTAssertEqual(sut?.numberOfPeople, 3)
        sut?.addPerson(Person(name: "James Brolin", age: 28))
        XCTAssertEqual(sut?.numberOfPeople, 4)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
}
