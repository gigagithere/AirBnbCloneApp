//
//  ProfileView.swift
//  AirbnbCloneApp
//
//  Created by Bartosz Mrugała on 29/08/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        // MARK: - Profile login
        VStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to starrt planning your next trip")
                }
                
                LoginButtonView(title: "Log in")
                
                HStack {
                    Text("Dont have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            // MARK: - Profile options
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding()
        }
    }
}


#Preview {
    ProfileView()
}
