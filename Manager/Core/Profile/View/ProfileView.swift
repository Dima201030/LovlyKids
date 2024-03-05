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
    @State private var fullname = ""
    @State private var age = ""
    @State private var showSheet = false
    
    let user: User
    var body: some View {
        NavigationView {
            VStack {
                if let profileImage = viewModel.profileImage {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color(.systemGray4))
                        .scaledToFill()
                        .clipShape(Circle())
                } else {
                    CircularProfileImageView(user: user, size: .max)
                }
                List {
                    Section {
                        Button {
                            showSheet.toggle()
                        } label: {
                            Text("Edit Bio")
                        }
                    }
                    Section {
                        Button {
                            <#code#>
                        } label: {
                            Text("Privicy")
                        }

                    }
                }
                
            }
            .sheet(isPresented: $showSheet, content: {
                EditPrivaryInfo(user: user)
            })
        }
    }
    
}

#Preview {
    ProfileView(user: User.MOCK_USER)
}
