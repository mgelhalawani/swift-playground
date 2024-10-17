//
//  StackView.swift
//  IncrementPlus
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        TabView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Header")
                    .font(.headline)
                Text("Subheader")
                    .font(.subheadline)
                Text("Detail text")
                    .font(.body)
            }
            .padding()
            .tabItem {
                Label("VStack", systemImage: "square.stack.3d.up.fill")
            }
            
            HStack(alignment: .top, spacing: 10) {
                Image(systemName: "star.fill")
                Text("Favorite")
                Spacer()
                Image(systemName: "star.fill")
            }
            .padding()
            .tabItem {
                Label("HStack", systemImage: "square.stack.3d.down.right.fill")
            }
            
            ZStack {
                Color.yellow
//                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("Overlayed Text")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
            }
            .tabItem {
                Label("ZStack", systemImage: "person.crop.rectangle.stack.fill")
            }
        }
    }
}

#Preview {
    StackView()
}
