//
//  AppeaanceView.swift
//  Lovly Kids
//
//  Created by Дима Кожемякин on 05.03.2024.
//

import SwiftUI

struct AppeaanceView: View {
    @State private var appData = AppData()
    
    var body: some View {
        VStack {
            Toggle(isOn: Binding<Bool>(
                get: {
                    return appData.appearance == .dark
                },
                set: { newValue in
                    appData.appearance = newValue ? .dark : .light
                    appData.saveColorScheme()
                }
            )) {
                Text("Темная тема")
            }
            .padding()
            
            Text("Текущая цветовая схема: \(appData.appearance == .dark ? "Темная" : "Светлая")")
                .padding()
        }
        .colorScheme(appData.appearance)
    }
}

#Preview {
    AppeaanceView()
}
