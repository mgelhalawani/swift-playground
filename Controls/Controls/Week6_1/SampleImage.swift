//
//  SampleImage.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct SampleImage: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
    }
}

#Preview {
    SampleImage()
}
