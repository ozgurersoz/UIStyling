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
    private var component: ViewComponent? = .none
    private var style: ViewStyle = .none
    
    public var size: CGSize {
        guard let component = component else { return CGSize.zero }
        let size = component.produce.size
        return size
    }
    
    convenience init(component: ViewComponent) {
        self.init(frame: .zero)
        defer {
            self.component = component
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        style.install(to: self)
        
        guard let component = component else { return }
        let view = component.produce.view
        view.frame = self.frame
        self.addSubview(view)

    }
}
