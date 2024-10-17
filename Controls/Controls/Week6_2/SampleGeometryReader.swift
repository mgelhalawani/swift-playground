//
//  SampleGeometryReader.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-10.
//

import SwiftUI

struct SampleGeometryReader: View {
    var body: some View {
        TabView {
            Circle()
                .fill(.blue)
                .frame(width: 100)
                .position(
                    CGPoint(
                        x: 320,
                        y: 600
                    )
                )
                .tabItem {
                    Label("absolute", systemImage: "a.circle")
                }
            
            GeometryReader { geometry in
                
                Circle()
                    .fill(.blue)
                    .frame(width: 100)
                    .position(
                        CGPoint(
                            x: geometry.size.width / 1.25,
                            y: geometry.size.height - 80
                        )
                    )
            }
            .tabItem {
                Label("relative", systemImage: "r.circle")
            }
            
            Circle()
                .fill(.blue)
                .frame(width: 100)
                .offset(x: 150, y: -150)
                .tabItem {
                    Label("offset", systemImage: "o.circle")
                }
        }
    }
}

#Preview {
    SampleGeometryReader()
}
