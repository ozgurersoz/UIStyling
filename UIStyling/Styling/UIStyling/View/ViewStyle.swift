//
//  ViewStyle.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 11.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import UIKit

enum ViewStyle {
    case redCircle(_ radius: CGFloat)
    case gradientedCircle(_ radius: CGFloat)
    case greenSquare
    case none
    
    private var style: Style<ViewProp> {
        switch self {
        case .redCircle(let radius):
            return .with(
                .cornerRadius(radius),
                .backgroundColor(.red),
                .clipsToBounds
            )
        case .gradientedCircle(let radius):
            return .with(
                .cornerRadius(radius),
                .gradient(fromColor: .green, toColor: .black),
                .borderColor(.white),
                .clipsToBounds
            )
        case .greenSquare:
            return .with(
                .backgroundColor(.green)
            )
        default:
            return Style()
        }
    }
    
    func install(to view: UIView) {
        style.install(to: view)
    }
}
