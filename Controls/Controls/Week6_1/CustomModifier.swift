//
//  CustomModifier.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-08.
//

import SwiftUI

struct CustomModifier: View {
    var body: some View {
        Text("Hello, World!")
            .highlighted(with: .blue)
    }
}

struct Highlighted: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(color)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

extension View {
    func highlighted(with color: Color) -> some View {
        self.modifier(Highlighted(color: color))
    }
}

#Preview {
    CustomModifier()
}
