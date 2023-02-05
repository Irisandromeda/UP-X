//
//  UIButtton + Extension.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, titleColor: UIColor, backgroundColor: UIColor, font: UIFont?) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
    }
    
    func applyGradient(colors: [CGColor], startPoint: CGPoint, endPoint: CGPoint) {
        self.backgroundColor = nil
        self.layoutIfNeeded()
        
        let gradient = CAGradientLayer()
        gradient.colors = colors
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.frame = .zero
        gradient.cornerRadius = self.frame.height / 2
        
        self.layer.insertSublayer(gradient, at: 0)
    }
    
}
