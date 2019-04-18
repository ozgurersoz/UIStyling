//
//  ViewProp.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 11.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//


import Foundation
import UIKit

enum ViewProp: StylingProp {
    typealias T = UIView
    case backgroundColor(_: UIColor)
    case cornerRadius(_ radius: CGFloat)
    case borderColor(_ color: UIColor)
    case gradient(fromColor: UIColor, toColor: UIColor)
    case clipsToBounds
    
    func bind(to view: UIView) {
        switch self {
        case .backgroundColor(let color):
            view.backgroundColor = color
        case .cornerRadius(let radius):
            view.layer.cornerRadius = radius
        case .borderColor(let color):
            view.layer.borderWidth = 1
            view.layer.borderColor = color.cgColor
        case .gradient(let from, let to):
            let gradient = CAGradientLayer()
            gradient.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            gradient.colors = [from.cgColor, to.cgColor]
            gradient.locations = [0, 1]
            view.layer.insertSublayer(gradient, at: 0)
        case .clipsToBounds:
            view.clipsToBounds = true
        }
    }
}
