//
//  UILabel + Extension.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, color: UIColor, font: UIFont?, alignment: NSTextAlignment) {
        self.init()
        
        self.text = text
        self.textColor = color
        self.font = font
        self.textAlignment = alignment
    }
    
}
