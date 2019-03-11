//
//  View.swift
//  UIStyling
//
//  Created by Özgür Ersöz on 11.03.2019.
//  Copyright © 2019 Özgür Ersöz. All rights reserved.
//

import Foundation
import UIKit


enum ViewComponent {
    case none
    case redCircle
    case featured
    
    var produce: ViewProducer {
        switch self {
        case .redCircle:
            return CircleRedView()
        case .featured:
            return FeaturedView()
        default:
            return DefaultView()
        }
    }
}


