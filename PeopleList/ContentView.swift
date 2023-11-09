//
//  ContentView.swift
//  PeopleList
//
//  Created by Flávio Silvério on 09/11/2023.
//

import SwiftUI

struct ContentView: View {
    let viewModel = PeopleListViewModel.filledWithRandoms()

    var body: some View {
        List(viewModel.people) { person in
          Text("\(person.name) - \(person.age)")
        }
    }
}

#Preview {
    ContentView()
}
