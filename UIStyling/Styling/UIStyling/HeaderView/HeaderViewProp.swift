//
//  HeaderViewProp.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 9.04.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

enum HeaderViewProp: StylingProp {
    typealias T = UIHeaderView
    case hideLeftView(Bool)
    case hideRightView(Bool)
    
    func bind(to headerView: UIHeaderView) {
        switch self {
        case .hideLeftView(let value):
            headerView.hideLeftView = value
        case .hideRightView(let value):
            headerView.hideRightView = value
        }
    }
}
