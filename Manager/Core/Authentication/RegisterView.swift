//
//  RegistrationView.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 23.02.2024.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistredViewModel()
    @Environment(\.dismiss) var dissmis
    var body: some View {
        VStack {
            Spacer()
            
            // logo Image
            Image("LOVELYKIDS")
                .resizable()
                .scaledToFit()
                .cornerRadius(15)
                .shadow(radius: 10)
                .frame(width: 150, height: 150)
                .padding()
            // text fields
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $viewModel.password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your Fullname", text: $viewModel.fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            
            
            Button(action: { Task { try await viewModel.createUser() }} ) {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dissmis()
            } label: {
                HStack (spacing: 3) {
                    Text("Already have an account ?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
        
    }
}

#Preview {
    RegistrationView()
}
