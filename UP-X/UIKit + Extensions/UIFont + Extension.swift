//
//  UIFont + Extension.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

extension UIFont {
    
    static func spaceGroteskRegular(size: CGFloat) -> UIFont? {
        guard let font = UIFont(name: "SpaceGrotesk-Regular", size: size) else { return .systemFont(ofSize: size)}
        
        return font
    }
    
    static func spaceGroteskBold(size: CGFloat) -> UIFont? {
        guard let font = UIFont(name: "SpaceGrotesk-Bold", size: size) else { return .systemFont(ofSize: size)}
        
        return font
    }
    
}
