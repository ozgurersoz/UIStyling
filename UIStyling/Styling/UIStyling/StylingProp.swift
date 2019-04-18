//
//  StylingProp.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 3.04.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

protocol StylingProp {
    associatedtype T: UIView
    func bind(to view: T)
}
