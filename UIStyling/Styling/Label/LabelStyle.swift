//
//  LabelStyle.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 8.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import UIKit

enum LabelStyle {
    case title
    case none
    
    private var style: Style<LabelProp> {
        switch self {
        case .title:
            return .with(props: .align(.center), .color(.white), .backgroundColor(.black))
        default:
            return .with(props: .align(.center))
        }
    }
    
    func install(to label: UILabel) {
        style.install(to: label)
    }
}
