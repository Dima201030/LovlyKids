//
//  ChatView.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 03.02.2024.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    let user: User
    var body: some View {
        ScrollView {
            // header
            VStack {
                CircularProfileImageView(user: user, size: .xLarge)
                
                VStack(spacing: 4) {
                    Text(user.fullname)
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Messager")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            // messages
            
            ForEach(0 ... 15, id: \.self) { message in
                ChatMessageView(isFromCurrentUser: Bool.random())
            }
            
        }
        //message input view
        
        
        Spacer()
        ZStack(alignment: .trailing) {
            TextField("Message..." , text: $messageText, axis: .vertical)
                .padding(12)
                .padding(.trailing, 48)
                .background(Color(.systemGroupedBackground))
                .clipShape(Capsule())
                .font(.subheadline)
            Button {
                print("Send message")
            } label: {
                Text("Send")
                    .font(.subheadline)
            }
            .padding(.horizontal)

        }
        .padding()
    }
}

#Preview {
    ChatView(user: User.MOCK_USER)
}
