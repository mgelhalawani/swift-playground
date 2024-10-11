//
//  SampleSafeArea.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-10.
//

import SwiftUI

struct SampleSafeArea: View {
    var body: some View {
        
        TabView {
            ZStack {
                Color.green
                    .edgesIgnoringSafeArea(.bottom)
                
                Text("First View!")
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity
                    )
                    
            }
            .tabItem {
                Label("First", systemImage: "1.circle")
            }
            
            ZStack {
                Color.yellow
                    .edgesIgnoringSafeArea(.top)
                
                Text("Second View!")
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity
                    )
                
            }
            .tabItem {
                Label("Second", systemImage: "2.circle")
            }
        }
    }
}

#Preview {
    SampleSafeArea()
}
