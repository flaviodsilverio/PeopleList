//
//  ContentView.swift
//  PeopleList
//
//  Created by Flávio Silvério on 09/11/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = PeopleListViewModel()

    var body: some View {
        List(viewModel.people.indices, id: \.self) { index in
            VStack(alignment: .leading, content:  {
                HStack {
                    Text("Name: \(viewModel.person(at: index)?.name ?? "")")
                    Spacer()
                    Button {
                        viewModel.removePerson(at: index)
                    } label: {
                        Image(systemName: "xmark.circle" ).accentColor(.red)
                    }.buttonStyle(.borderless)

                }
                Text("Age: \(viewModel.person(at: index)?.age ?? 0)")
            })
        }
    }
}

#Preview {
    ContentView()
}
