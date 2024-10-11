//
//  SampleSlider.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct SampleSlider: View {
    @State var sliderValue = 0.0
    
    var body: some View {
        Slider(value: $sliderValue, in: 0...100)
            .padding()
            .accentColor(.green)
    }
}

#Preview {
    SampleSlider()
}
