//
//  SettingsView.swift
//  Sportify
//
//  Created by Mohamed El-Halawani on 2024-10-18.
//

import SwiftUI

struct SettingsView: View {
    
    @State var showAlert: Bool = false
    @State var showActionSheet: Bool = false
    
    var body: some View {
        List {
            Button("Show Alert") {
                showAlert.toggle()
            }
            
            Button("Show Action Sheet") {
                showActionSheet.toggle()
            }
        }
        .alert("Showing Alert", isPresented: $showAlert) {
            Button("OK") {
                print("OK")
            }
            
            Button("Close") {}
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Available Actions"),
                message: Text("Please choose action"),
                buttons: [
                    .default(Text("Vote")),
                    .default(Text("Delete"))
                ]
            )
        }
        .tabItem {
            Image(systemName: "gear")
            Text("Settings")
        }
        
    }
}

#Preview {
    SettingsView()
}
