//
//  StatView.swift
//  Sportify
//
//  Created by Mohamed El-Halawani on 2024-10-16.
//

import SwiftUI

struct StatView: View {
    
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            
            Text(value)
                .font(.system(size: 60, weight: .semibold))
        }
    }
}


#Preview {
    StatView(title: "Title", value: "Value")
}
