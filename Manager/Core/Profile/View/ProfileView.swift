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
                            .frame(width: 120, height: 120)
                            .foregroundColor(Color(.systemGray4))
                            .scaledToFill()
                            .clipShape(Circle())
                    } else {
                        CircularProfileImageView(user: user, size: .max)
                    }
                }
                
                
                VStack {
                    Text(user.fullname)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    Text("\(user.age)")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                }
                
            }
            
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER)
}
