//
//  SampleViews.swift
//  IncrementPlus
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct SomeViews: View {
    
    var body: some View {
        List {
            
            NavigationLink("Text View") {
                SampleTextView()
            }
            
            NavigationLink("Image View") {
                SampleImage()
                
            }
            
            NavigationLink("Button View") {
                SampleButton()
            }
            
            NavigationLink("Text Field") {
                SampleTextField()
            }
            
            NavigationLink("Toggle View") {
                SampleToggel()
            }
            
            NavigationLink("Slider View") {
                SampleSlider()
            }
        }
    }
}

#Preview {
    SomeViews()
}
