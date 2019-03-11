//
//  UserCardView.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 11.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class FeaturedView: UIView, ViewProducer {
    var size: CGSize {
        get {
            return CGSize(width: 0, height: 0)
        }
    }
    
    var view: UIView {
        get {
            return self
        }
    }
    
    lazy var gradientView = View(style: .gradiented)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView() {
        addSubview(gradientView)
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        gradientView.snp.makeConstraints { (make) in
            make.top.bottom.right.left.equalToSuperview()
        }
        
        super.updateConstraints()
    }
}
