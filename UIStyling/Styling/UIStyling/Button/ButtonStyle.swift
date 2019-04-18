//
//  ButtonStyle.swift
//  Misli
//
//  Created by Ozgur on 25.12.2018.
//  Copyright © 2018 Hi Agency. All rights reserved.
//

import UIKit

enum ButtonStyle {
    case none
    private var style: Style<ButtonProp> {
        switch self {
        
        default:
            return Style()
        }
    }
    
    func install(to label: UIButton) {
        style.install(to: label)
    }
}
