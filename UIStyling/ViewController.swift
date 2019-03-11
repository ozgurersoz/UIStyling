//
//  ViewController.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 8.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var featuredArea = View(component: .featured)
    lazy var redCircle = View(style: .redCircle(50))
    
    override func loadView() {
        super.loadView()
        view.addSubview(featuredArea)
        view.addSubview(redCircle)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        featuredArea.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalToSuperview()
        }
        redCircle.snp.makeConstraints { (make) in
            make.top.equalTo(100)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
        }
        super.updateViewConstraints()
    }
}

