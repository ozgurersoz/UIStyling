//
//  CenterRedView.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 11.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class CircleRedView: UIView, ViewProducer {    
    var view: UIView {
        get {
            return self
        }
    }
    
    var size: CGSize {
        get {
           return CGSize(width: 100, height: 100)
        }
    }
    
    lazy var circleView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 5
        view.backgroundColor = .white
        view.layer.cornerRadius = (self.size.width-10)/2
        view.layer.borderColor = UIColor.red.cgColor
        view.clipsToBounds = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView() {
        addSubview(circleView)
        backgroundColor = .yellow
        setNeedsUpdateConstraints()
    }
    
    override func updateConstraints() {
        circleView.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.width.equalTo(size.width-10)
            make.height.equalTo(size.height-10)
        }
        
        super.updateConstraints()
    }
}
