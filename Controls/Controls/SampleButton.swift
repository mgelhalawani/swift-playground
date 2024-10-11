//
//  SampleButton.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct SampleButton: View {
    var body: some View {
        Button {
            print("Button was pressed!")
        } label: {
            Text("Press Me")
                .font(.title2)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    SampleButton()
}
