//
//  UIImageView + Extension.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

extension UIImageView {
    
    convenience init(image: String, contentMode: UIView.ContentMode) {
        self.init()
        
        guard let image = UIImage(named: image) else { return }
        
        self.image = image
        self.contentMode = contentMode
    }
    
}
