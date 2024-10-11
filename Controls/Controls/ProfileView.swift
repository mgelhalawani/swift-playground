//
//  ProfileView.swift
//  IncrementPlus
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.purple)
            
            Text("John Doe")
                .font(.title)
                .fontWeight(.bold)
            
            Text("iOS Developer")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                Button() {
                    print("Follow tapped!")
                } label:  {
                    Text("Follow")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    print("Message tapped!")
                }) {
                    Text("Message")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 10)
        .navigationTitle("Profile")
    }
}

#Preview {
    ProfileView()
}
