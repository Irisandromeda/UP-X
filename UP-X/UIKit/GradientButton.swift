//
//  GradientButton.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

class GradientButton: UIButton {
    
    private let gradient = GradientView(from: .top, to: .bottom, startColor: #colorLiteral(red: 0.4509803922, green: 0.4509803922, blue: 0.8431372549, alpha: 1), endColor: #colorLiteral(red: 0.07843137255, green: 0.568627451, blue: 1, alpha: 1))
    
    init(cornerRadius: CGFloat) {
        super.init(frame: .zero)
        
        self.layer.cornerRadius = cornerRadius
        gradient.layer.cornerRadius = cornerRadius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(gradient)
        
        gradient.translatesAutoresizingMaskIntoConstraints = false
        
        gradient.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
