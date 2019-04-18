//
//  Style.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 8.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

final class Style<V: StylingProp> {
    var props = [V]()
    
    static func with(_ props: V...) -> Style<V> {
        let style = Style<V>()
        style.props = props
        return style
    }
    
    func install(to view: V.T) {
        props.forEach { (prop) in
            prop.bind(to: view)
        }
    }
}

