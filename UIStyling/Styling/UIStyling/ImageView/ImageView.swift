//
//  ImageView.swift
//  MinasTirith
//
//  Created by Özgür Ersöz on 9.09.2018.
//  Copyright © 2018 Ozgur Ersoz. All rights reserved.
//

import UIKit

class ImageView: UIImageView {
    var style: ImageViewStyle = .none {
        didSet {
            style.install(to: self)
        }
    }
    
    convenience init(style: ImageViewStyle) {
        self.init(frame: .zero)
        defer {
            self.style = style
        }
    }
    
    func set(props: ImageViewProp...) {
        props.forEach { $0.bind(to: self) }
    }
}
