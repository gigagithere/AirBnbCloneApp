//
//  LoginButtonView.swift
//  AirbnbCloneApp
//
//  Created by Bartosz Mrugała on 29/08/2024.
//

import SwiftUI

struct LoginButtonView: View {
    
    var title: String
    
    var body: some View {
        Button {
            print("Log in")
        } label: {
            Text(title)
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LoginButtonView(title: "Log in")
}
