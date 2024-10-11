//
//  SampleAsyncImage.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-08.
//

import SwiftUI

struct SampleAsyncImage: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/paul.jpg")) { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview {
    SampleAsyncImage()
}
