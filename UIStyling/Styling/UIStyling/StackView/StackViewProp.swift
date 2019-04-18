//
//  StackViewProps.swift
//  Misli
//
//  Created by Özgür Ersöz on 13.03.2019.
//  Copyright © 2019 Hi Agency. All rights reserved.
//


import Foundation
import UIKit

enum StackViewProp: StylingProp {
    typealias T = UIStackView
    case alignment(_: UIStackView.Alignment)
    case axis(_: NSLayoutConstraint.Axis)
    case distribution(_: UIStackView.Distribution)
    case spacing(_: CGFloat)
    
    func bind(to stackView: UIStackView) {
        switch self {
        case .alignment(let alignment):
            stackView.alignment = alignment
        case .axis(let axis):
            stackView.axis = axis
        case .distribution(let distribution):
            stackView.distribution = distribution
        case .spacing(let space):
            stackView.spacing = space
        }
    }
}
