//
//  ModulesBuilder.swift
//  UP-X
//
//  Created by Irisandromeda on 31.01.2023.
//

import UIKit

protocol ModulesBuilderProtocol {
    static func createMenuModule() -> UIViewController
    static func createGameModule() -> UIViewController
}

class ModulesBuilder: ModulesBuilderProtocol {
    static func createMenuModule() -> UIViewController {
        let view = MenuViewController()
        return view
    }
    
    static func createGameModule() -> UIViewController {
        let view = GameViewController()
        let presenter = GamePresenter()
        view.presenter = presenter
        return view
    }
    
}
