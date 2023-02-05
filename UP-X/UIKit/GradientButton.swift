//
//  GradientButton.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

class GradientButton: UIButton {
    
    let gradient = CAGradientLayer()
    
    init(title: String, titleColor: UIColor, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.layer.cornerRadius = cornerRadius
        gradient.cornerRadius = cornerRadius
        
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradient.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGradient() {
        gradient.colors = [#colorLiteral(red: 0.0282662455, green: 0.6468188763, blue: 1, alpha: 1) , #colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.8431372549, alpha: 1)]
        gradient.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradient.layoutIfNeeded()
        
        layer.insertSublayer(gradient, at: 0)
    }
    
}
