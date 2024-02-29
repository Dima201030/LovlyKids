//
//  SettingsView.swift
//  Lovly Kids
//
//  Created by Дима Кожемякин on 29.02.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases, id: \.self) { option in
                        NavigationLink(destination: option.destinationView) {
                            HStack {
                                Image(systemName: "\(option.icon)")
                                Text(option.title)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
