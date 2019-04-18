//
//  ViewController.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 8.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy private var headerView = HeaderView(style: .loggedInUser)
    lazy private var titleLabel = Label(style: .title)
    lazy private var anotherTitleLabel = Label(style: .none)
    lazy private var descriptionLabel = Label(style: .homeDescription)
    lazy private var balanceLabel = Label(style: .balance)
    
    override func loadView() {
        super.loadView()
        view.addSubview(headerView)
        view.addSubview(titleLabel)
        view.addSubview(anotherTitleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(balanceLabel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.setProps(.text("Title Label"))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.userDidLogout()
        }
        view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        headerView.snp.makeConstraints { (make) in
            make.top.equalTo(100)
            make.left.right.equalToSuperview()
            make.height.equalTo(100)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(headerView.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        anotherTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(anotherTitleLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        balanceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        super.updateViewConstraints()
    }
    
    func userDidLogout() {
        headerView.style = .guestUser
    }
}

