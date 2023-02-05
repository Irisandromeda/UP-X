//
//  GameViewController.swift
//  UP-X
//
//  Created by Irisandromeda on 31.01.2023.
//

import UIKit
import SwiftUI
import SnapKit

class GameViewController: UIViewController {
    
    var presenter: GamePresenterProtocol!
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .mainColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSwiftUIView()
    }
    
    private func setupSwiftUIView() {
        let controller = UIHostingController(rootView: GameView())
        
        guard let gameView = controller.view else { return }
        
        gameView.backgroundColor = .clear
        
        view.addSubview(gameView)
        
        gameView.snp.makeConstraints { make in
            make.topMargin.equalToSuperview().offset(110)
            make.height.equalTo(400)
            make.leading.equalToSuperview().offset(59)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
}
