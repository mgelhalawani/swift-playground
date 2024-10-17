//
//  SpacedStatView.swift
//  Sportify
//
//  Created by Mohamed El-Halawani on 2024-10-16.
//

import SwiftUI

enum SpacerPosition {
    case before
    case after
}

struct SpacedStatView: View {
    
    var title: String
    var value: String
    var position: SpacerPosition
    
    var body: some View {
        HStack {
            
            if position == .before {
                Spacer()
            }
            
            StatView(title: title, value: value)
            
            if position == .after {
                Spacer()
            }
        }
    }

}


#Preview {
    SpacedStatView(title: "Title", value: "Value", position: .after)
}
