//
//  ContentView.swift
//  Sportify
//
//  Created by Mohamed El-Halawani on 2024-10-16.
//

import SwiftUI

struct DetailsView: View {
    
    @State var selected: Int = 0
    let team: Team
    
    var body: some View {
        VStack {
            
            Image(team.image)
                .resizable()
                .frame(width: nil, height: 250)
                
            Picker(selection: $selected) {
                Text("Stats").tag(0)
                Text("Actions").tag(1)
            } label: {
                Text("Select an option")
            }
            .pickerStyle(.segmented)
            
            ScrollView {
                if selected == 0 {
                    StatsView()
                } else if selected == 1 {
                    ActionsView()
                }
                
                Spacer()
            }
        }
        .navigationTitle("Details")
    }
}

#Preview {
    DetailsView(
        team: Team(
            name: "MR",
            description: "MR",
            score: 400,
            image: "W3"
        )
    )
}
