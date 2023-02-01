//
//  UIStackView + Extension.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        
        self.axis = axis
        self.spacing = spacing
    }
    
}
