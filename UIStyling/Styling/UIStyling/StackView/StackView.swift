//
//  StackView.swift
//  Misli
//
//  Created by Özgür Ersöz on 13.03.2019.
//  Copyright © 2019 Hi Agency. All rights reserved.
//

import Foundation
import UIKit

class StackView: UIStackView {
    private var style: StackViewStyle = .none {
        didSet {
            style.install(to: self)
        }
    }
    
    convenience init(style: StackViewStyle) {
        self.init(frame: .zero)
        defer {
            self.style = style
        }
    }
    
    func set(props: StackViewStyle...) {
        props.forEach { (prop) in
            prop.install(to: self)
        }
    }
}
