//
//  View.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 11.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

protocol ViewProducer {
    var size: CGSize { get }
    var view: UIView { get }
}

class View: UIView {
    private var style: ViewStyle = .none {
        didSet {
            style.install(to: self)
        }
    }
    convenience init(style: ViewStyle) {
        self.init(frame: .zero)
        defer {
            self.style = style
        }
    }
    
    func set(props: ViewStyle...) {
        props.forEach { (prop) in
            prop.install(to: self)
        }
    }
}
