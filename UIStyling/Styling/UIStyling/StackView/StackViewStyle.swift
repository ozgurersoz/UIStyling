//
//  StackViewStyle.swift
//  Misli
//
//  Created by Özgür Ersöz on 13.03.2019.
//  Copyright © 2019 Hi Agency. All rights reserved.
//

import Foundation
import UIKit

enum StackViewStyle {
    case homeHorizontal
    case homeVertical
    case none
    case exploreVertical
    
    private var style: Style<StackViewProp> {
        switch self {
        case .homeHorizontal:
            return .with(
                .alignment(.fill),
                .axis(.horizontal),
                .distribution(.fillEqually),
                .spacing(8)
            )
      
        case .homeVertical:
            return .with(
                .axis(.vertical),
                .alignment(.fill),
                .distribution(.fillEqually),
                .spacing(8)
            )
        case .exploreVertical:
            return .with(
                .axis(.vertical),
                .alignment(.fill),
                .distribution(.fillEqually),
                .spacing(12)
            )
        default:
            return Style()
        }
    }
    
    func install(to view: UIStackView) {
        style.install(to: view)
    }
    
    
}
