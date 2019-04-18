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
    case homeDescription
    case balance
    case blueTitle
    case none
    
    private var style: Style<LabelProp> {
        switch self {
        case .title:
            return .with(
                .align(.center),
                .color(.white),
                .backgroundColor(.black)
            )
        case .homeDescription:
            return .with(
                .align(.center),
                .color(.white),
                .backgroundColor(.black)
            )
        case .balance:
            return .with(
                .align(.center),
                .color(.white),
                .backgroundColor(.black)
            )
        case .blueTitle:
            return .with(
                .align(.center),
                .color(.blue)
            )
        case .none:
            return .with()
        }
    }
    
    func install(to label: UILabel) {
        style.install(to: label)
    }
}
