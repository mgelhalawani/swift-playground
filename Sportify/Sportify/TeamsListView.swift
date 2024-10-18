//
//  TeamsListView.swift
//  Sportify
//
//  Created by Mohamed El-Halawani on 2024-10-18.
//

import SwiftUI

struct Team: Identifiable, Hashable {
    let id = UUID()
    
    let name: String
    let description: String
    
    let score: Int
    let image: String
}

struct TeamsListView: View {
    
    let teams: [Team] = [
        Team(name: "MB", description: "Mercedes", score: 400, image: "W3"),
        Team(name: "RB", description: "Red Bull", score: 450, image: "RB18"),
        Team(name: "FR", description: "Ferrari", score: 390, image: "fr")
    ]
    
    var body: some View {
        NavigationStack {
            List(teams, id: \.self) { team in
                NavigationLink(value: team) {
                    TeamsListCellView(team: team)
                }
            }
            .navigationTitle("List")
            .navigationDestination(for: Team.self) {team in
                DetailsView(team: team)
            }
        }
        .tabItem {
            Image(systemName: "person.3.fill")
            Text("Teams")
        }
    }
}

struct TeamsListCellView: View {
    
    let team: Team
    
    var body: some View {
        HStack {
            Image(team.image)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(.circle)
            
            VStack(alignment: .leading) {
                Text(team.name)
                    .font(.title2)
                
                Text(team.description)
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Text("\(team.score)")
                .font(.callout)
        }
    }
}

#Preview {
    TeamsListView()
}
