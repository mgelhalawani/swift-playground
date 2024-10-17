//
//  ActionsView.swift
//  Sportify
//
//  Created by Mohamed El-Halawani on 2024-10-16.
//

import SwiftUI

struct ActionsView: View {
    
    @State var votes: Int = 0
    @State var isOn: Bool = true
    
    @State var email: String = ""
    
    var body: some View {
        VStack {
            DatePicker("Next Game", selection: .constant(Date()))
            
            Toggle(isOn: $isOn) {
                Text("Follow")
            }
            
            Stepper("Vote", value: $votes)
            
            
            ProgressView(value: 0.2) {
                Text("Total Votes")
            }
            
            VStack(alignment: .leading) {
                
                Text("Share with Friend")
                    .font(.title2)
                    .foregroundStyle(.gray)
                
                HStack {
                    
                    TextField(
                        "email",
                        text: $email
                    )
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
            }
        }
        .padding()
            
    }
}


#Preview {
    ActionsView()
}
