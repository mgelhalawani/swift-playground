//
//  SampleTextField.swift
//  Controls
//
//  Created by Mohamed El-Halawani on 2024-10-07.
//

import SwiftUI

struct SampleTextField: View {
    @State var email: String = ""
    
    var body: some View {
        TextField("Enter your email", text: $email)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(50)
    }
}

#Preview {
    SampleTextField()
}
