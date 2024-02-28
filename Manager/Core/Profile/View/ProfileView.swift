//
//  ProfileView.swift
//  Manager
//
//  Created by Дима Кожемякин on 23.02.2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    let user: User
    var body: some View {
        VStack {
            VStack {
                PhotosPicker(selection: $viewModel.selectItme) {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color(.systemGray4))
                            .scaledToFill()
                            .clipShape(Circle())
                    } else {
                        CircularProfileImageView(user: user, size: .max)
                    }
                }
                
                
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases, id: \.self) { option in
                        HStack {
                            Image(systemName: "\(option.imageName)")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            Text("\(option.title)")
                                .font(.subheadline)
                            
                        }
                    }
                }
                Section {
                    Button("Log Out") {
                        AuthService.shared.singOut()
                    }
                    
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER)
}
