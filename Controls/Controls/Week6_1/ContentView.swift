//
//  ContentView.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            
            NavigationLink {
                SomeViews()
            } label: {
                Label("Some Views", systemImage: "slider.horizontal.below.square.and.square.filled")
            }
            
            NavigationLink {
                StackView()
            } label: {
                Label("Stack Views", systemImage: "square.stack.3d.down.right")
            }
            
            NavigationLink {
                ProfileView()
            } label: {
                Label("Profile View", systemImage: "person.text.rectangle")
            }
            
            NavigationLink {
                CustomModifier()
            } label: {
                Label("Custom Modifer", systemImage: "plus.forwardslash.minus")
            }
            
            NavigationLink {
                SampleAsyncImage()
            } label: {
                Label("URL Image", systemImage: "photo")
            }
            
            NavigationLink {
                SampleGeometryReader()
            } label: {
                Label("Geometry Reader", systemImage: "dot.square")
            }
            
            NavigationLink {
                SampleGeometryReader()
            } label: {
                Label("Safe Area", systemImage: "inset.filled.square.dashed")
            }
        }
    }
}

#Preview {
    ContentView()
}
