//
//  HeaderStyle.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 9.04.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

enum HeaderViewStyle {
    case loggedInUser
    case guestUser
    case bannedUser
    
    private var style: Style<HeaderViewProp> {
        switch self {
        case .guestUser:
            return .with(
                .hideRightView(true),
                .hideLeftView(true),
                .hideTitleLabel(false)
            )
        case .loggedInUser:
            return .with(
                .hideRightView(false),
                .hideLeftView(false),
                .hideTitleLabel(true)
            )
        case .bannedUser:
            return .with(
                .hideRightView(true),
                .hideLeftView(true),
                .hideTitleLabel(true)
            )
        }
    }
    
    func install(to headerView: UIHeaderView) {
        style.install(to: headerView)
    }
}
