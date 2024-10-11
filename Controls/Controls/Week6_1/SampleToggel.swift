//
//  SampleToggel.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct SampleToggel: View {
    @State var isOn = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Enable feature")
        }
        .padding()
    }
}

#Preview {
    SampleToggel()
}
