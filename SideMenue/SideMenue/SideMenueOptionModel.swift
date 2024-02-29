//
//  SideMenueOptionModel.swift
//  SideMenue
//
//  Created by mohamdan on 29/02/2024.
//

import Foundation

enum SideMenueOptionModel: Int, CaseIterable {
    case dashboard
    case performance
    case profile
    case search
    case notifications
    
    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Searche"
        case .notifications:
            return "Notification"
        }
    }
    var systemImageName: String {
        switch self {
        case .dashboard:
            return "filemenu.and.cursorarrow"
        case .performance:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnifyingglass"
        case .notifications:
            return "bell"
        }
    }
}
extension SideMenueOptionModel: Identifiable {
var id: Int { return self.rawValue }
}
