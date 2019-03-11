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
    case gradiented
    case none
    
    private var style: Style<ViewProp> {
        switch self {
        case .redCircle(let radius):
            return .with(props:
                .cornerRadius(radius),
                .backgroundColor(.red),
                .clipsToBounds
            )
        case .gradiented:
            return .with(props:
                .gradient(fromColor: .white, toColor: .gray),
                .borderColor(.gray)
            )
        default:
            return Style()
        }
    }
    
    func install(to view: UIView) {
        style.install(to: view)
    }
}
