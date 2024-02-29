//
//  SettingsViewModel.swift
//  Lovly Kids
//
//  Created by Дима Кожемякин on 29.02.2024.
//

import Foundation
import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    
    
    case ProfileSettings
    case Appearance
    case Privacy
    case Language
    case Notification
    
    var title: String {
        switch self {
        case .Language:
            return NSLocalizedString("Language", comment: "")
        case .ProfileSettings:
            return NSLocalizedString("Profile", comment: "")
        case .Appearance:
            return NSLocalizedString("Appearance", comment: "")
        case .Privacy:
            return NSLocalizedString("Privacy", comment: "")
        case .Notification:
            return NSLocalizedString("Notification", comment: "")
        }
    }
    
    var icon: String {
        switch self {
        case .Language:
            return "signature"
        case .ProfileSettings:
            return "person.text.rectangle.fill"
        case .Appearance:
            return "pencil.and.scribble"
        case .Privacy:
            return "lock.fill"
        case .Notification:
            return "message.fill"
        }
    }
    
    var destinationView: some View {
        switch self {
        case .Appearance:
            return EmptyView()
        case .ProfileSettings:
            return EmptyView()
        case .Privacy:
            return EmptyView()
        case .Language:
            return EmptyView()
        case .Notification:
            return EmptyView()
        }
    }
    
    var id: Int { return self.rawValue }
}
