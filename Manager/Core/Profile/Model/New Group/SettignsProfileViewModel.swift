//
//  SettignsProfileViewModel.swift
//  Lovly Kids
//
//  Created by Дима Кожемякин on 05.03.2024.
//

import Foundation

class SettignsProfileViewModel: ObservableObject {
    
}

enum SettingsProfileEnum: Int, CaseIterable, Identifiable {
    
    case editPrimaryInfo
    
    var id: Int { return self.rawValue }

}
