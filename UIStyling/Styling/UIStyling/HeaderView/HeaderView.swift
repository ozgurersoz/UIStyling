//
//  HeaderView.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 9.04.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

class HeaderView: UIHeaderView {
    public var style: HeaderViewStyle = .guestUser {
        didSet {
            style.install(to: self)
        }
    }
    
    convenience init(style: HeaderViewStyle) {
        self.init(frame: .zero)
        defer {
            self.style = style
        }
    }
    
    func setProps(_ props: HeaderViewProp...) {
        props.forEach { (prop) in
            prop.bind(to: self)
        }
    }
}


