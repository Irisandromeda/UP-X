//
//  UIFont + Extension.swift
//  UP-X
//
//  Created by Irisandromeda on 01.02.2023.
//

import UIKit

extension UIFont {
    
    static func spaceGroteskRegular(size: CGFloat) -> UIFont? {
        return UIFont(name: "SpaceGrotesk-Regular", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func spaceGroteskBold(size: CGFloat) -> UIFont? {
        return UIFont(name: "SpaceGrotesk-Bold", size: size) ?? .systemFont(ofSize: size)
    }
    
}
