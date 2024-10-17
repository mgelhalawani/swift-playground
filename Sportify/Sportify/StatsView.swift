//
//  StatsView.swift
//  Sportify
//
//  Created by Mohamed El-Halawani on 2024-10-16.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        Button {
             
        } label: {
            Spacer()
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .foregroundColor(.yellow)
                
        }
        .padding()
        
        SpacedStatView(
            title: "Standing",
            value: "1",
            position: .after
        )
            .padding()
        
        SpacedStatView(
            title: "Points",
            value: "390",
            position: .before
        )
            .padding()
        
        SpacedStatView(
            title: "Vote",
            value: "1390",
            position: .after
        )
            .padding()

    }
}


#Preview {
    StatsView()
}
