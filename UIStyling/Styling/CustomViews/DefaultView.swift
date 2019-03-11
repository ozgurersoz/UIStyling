//
//  DefaultView.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 11.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit

class DefaultView: UIView, ViewProducer {
    var size: CGSize = CGSize(width: 0, height: 0)
    var view: UIView {
        get {
            return self
        }
    }
}
