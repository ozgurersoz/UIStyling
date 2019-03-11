//
//  Label.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 8.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

class Label: UILabel {
    private var style: LabelStyle = .none {
        didSet {
            style.install(to: self)
        }
    }

    convenience init(style: LabelStyle) {
        self.init(frame: .zero)
        defer {
            self.style = style
        }
    }

    func set(props: LabelProp...) {
        props.forEach { (prop) in
            prop.bind(to: self)
        }
    }
}
