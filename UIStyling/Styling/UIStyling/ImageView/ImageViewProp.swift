//
//  ImageViewProp.swift
//  MinasTirith
//
//  Created by Özgür Ersöz on 9.09.2018.
//  Copyright © 2018 Ozgur Ersoz. All rights reserved.
//

import UIKit

enum ImageViewProp: StylingProp {
    typealias T = UIImageView
    case cornerRadius(_ : CGFloat)
    case clipsToBounds(_: Bool)
    case contentMode(_ : UIView.ContentMode)
    case image(_ : String)
    
    func bind(to imageView: UIImageView) {
        switch self {
        case .cornerRadius(let radius):
            imageView.layer.cornerRadius = radius
        case .clipsToBounds(let bound):
            imageView.clipsToBounds = bound
        case .contentMode(let contentMode):
            imageView.contentMode = contentMode
        case .image(let img):
            imageView.image = UIImage(named: img)
        }
    }
}
