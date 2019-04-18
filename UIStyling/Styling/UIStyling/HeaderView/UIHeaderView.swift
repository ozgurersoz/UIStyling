//
//  UIHeaderView.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 9.04.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

class UIHeaderView: UIView {
    public var hideLeftView = false {
        willSet {
            leftView.isHidden = newValue
        }
    }
    public var hideRightView = false {
        willSet {
            rightView.isHidden = newValue
        }
    }
    
    private var didSetupConstraints = false
    private lazy var leftView = View(style: .gradientedCircle(50))
    private lazy var rightView = View(style: .redCircle(50))
    private lazy var titleLabel = Label(style: .blueTitle)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        addSubview(leftView)
        addSubview(rightView)
        addSubview(titleLabel)
        titleLabel.text = "YOU SHALL NOT PASS"
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        if !didSetupConstraints {
            leftView.snp.makeConstraints { (make) in
                make.left.equalTo(15)
                make.width.height.equalTo(100)
                make.centerY.equalToSuperview()
            }
            
            titleLabel.snp.makeConstraints { (make) in
                make.centerX.centerY.equalToSuperview()
            }
            
            rightView.snp.makeConstraints { (make) in
                make.right.equalTo(-15)
                make.centerY.equalToSuperview()
                make.width.height.equalTo(100)
            }
            didSetupConstraints = true
        }
        super.updateConstraints()
    }
}
