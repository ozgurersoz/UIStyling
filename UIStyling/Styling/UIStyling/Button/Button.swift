//
//  Button.swift
//  Misli
//
//  Created by Ozgur on 25.12.2018.
//  Copyright © 2018 Hi Agency. All rights reserved.
//

import Foundation
import UIKit

class Button: UIButton {
    var style: ButtonStyle = .none {
        didSet {
            style.install(to: self)
        }
    }
    
    convenience init(style: ButtonStyle) {
        self.init(frame: .zero)
        defer {
            self.style = style
        }
    }
    
    func set(props: ButtonProp...) {
        props.forEach { $0.bind(to: self) }
    }
}

