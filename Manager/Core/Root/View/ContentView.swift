//
//  ContentView.swift
//  Manager
//
//  Created by Дима Кожемякин on 23.02.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        VStack {
            Group {
                if viewModel.userSession != nil {
                    InboxView()
                } else {
                    LoginView()
                }
            }
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
