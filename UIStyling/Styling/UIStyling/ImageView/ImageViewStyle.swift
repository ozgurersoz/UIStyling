//
//  ImageViewStyle.swift
//  MinasTirith
//
//  Created by Özgür Ersöz on 9.09.2018.
//  Copyright © 2018 Ozgur Ersoz. All rights reserved.
//

import UIKit

enum ImageViewStyle {
    case rounded(_: CGFloat)
    case normal(contentMode: UIView.ContentMode, image: String)
    case aspectFill
    case aspectFit
    case fill
    case none
    
    private var style: Style<ImageViewProp> {
        switch self {
        case .rounded(let radius):
            return .with(
                .cornerRadius(radius),
                .clipsToBounds(true)
            )
        case .normal(let contentMode, let image):
            return .with(
                .clipsToBounds(true),
                .contentMode(contentMode),
                .image(image)
            )
        case .aspectFill:
            return .with(.contentMode(UIView.ContentMode.scaleAspectFill))
        case .aspectFit:
            return .with(.contentMode(UIView.ContentMode.scaleAspectFit))
        case .fill:
            return .with(.contentMode(UIView.ContentMode.scaleToFill))
        case .none:
            return Style()
        }
        
    }
    
    func install(to imageView: UIImageView) {
        style.install(to: imageView)
    }
}
