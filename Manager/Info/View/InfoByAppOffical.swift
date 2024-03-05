//
//  InfoByAppOff.swift
//  Lovly Kids
//
//  Created by Дима Кожемякин on 04.03.2024.
//

import SwiftUI

struct InfoByAppOffical: View {
    @StateObject private var viewModel = InfoViewModelTexts()
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(viewModel.)")
            }
        }
    }
}

#Preview {
    InfoByAppOffical()
}
