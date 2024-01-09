//
//  UIview+Extension.swift
//  DynamicSegmentSwift
//
//  Created by jay sabeen on 09/01/24.
//

import Foundation
import UIKit

extension UIView {
    
    func maskedCorner(radious: CGFloat) {
        self.layer.cornerRadius = radious
        self.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner,.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        self.layer.masksToBounds = true
    }
    
}


