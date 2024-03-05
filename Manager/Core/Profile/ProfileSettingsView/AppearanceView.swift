//
//  AppeaanceView.swift
//  Lovly Kids
//
//  Created by Дима Кожемякин on 05.03.2024.
//

import SwiftUI

struct AppearanceView: View {
    @EnvironmentObject var appData: AppData

    var body: some View {
        NavigationStack {
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
        }
    }
}

struct AppearanceView_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceView()
            .environmentObject(AppData())
    }
}
