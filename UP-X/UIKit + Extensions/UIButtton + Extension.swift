//
//  UIButtton + Extension.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, titleColor: UIColor, backgroundColor: UIColor, font: UIFont) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
    }
    
}
