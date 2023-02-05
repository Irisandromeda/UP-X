//
//  MenuViewController.swift
//  UP-X
//
//  Created by Irisandromeda on 31.01.2023.
//

import UIKit
import SnapKit

class MenuViewController: UIViewController {
    
    private let logoImage = UIImageView(image: "logo", contentMode: .scaleAspectFit)
    private let titleLabel = UILabel(text: "Lorem ipsum dolor", color: .white, font: .spaceGroteskBold(size: 16), alignment: .center)
    private let descriptionLabel = UILabel(text: "Lorem ipsum dolor sit amet consectetur Tempus congue risus morbi tincidunt.", color: .gray, font: .spaceGroteskRegular(size: 16), alignment: .center)
    private let startGameButton = UIButton(title: "Начать игру", titleColor: .white, backgroundColor: .systemBlue, font: .spaceGroteskRegular(size: 16))
    private let versionLabel = UILabel(text: "UP-X v1.0", color: .gray, font: .spaceGroteskRegular(size: 18), alignment: .center)
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .mainColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
        addConstraints()
    }
    
    private func setupSubviews() {
        view.addSubview(logoImage)
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(startGameButton)
        view.addSubview(versionLabel)
        
        descriptionLabel.numberOfLines = 0
        
        view.subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        startGameButton.addTarget(self, action: #selector(startGameButtonTap), for: .touchUpInside)
        
        startGameButton.layer.cornerRadius = 10 
    }
    
    @objc private func startGameButtonTap() {
        let viewController = ModulesBuilder.createGameModule()
        present(viewController, animated: true)
    }
    
}


    //MARK: AutoLayout

private extension MenuViewController {
    private func addConstraints() {
        logoImage.snp.makeConstraints { make in
            make.topMargin.equalToSuperview().offset(250)
            make.leading.equalTo(110)
            make.trailing.equalTo(-110)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(40)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.leading.trailing.equalTo(titleLabel)
        }
        
        startGameButton.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(60)
            make.leading.equalTo(80)
            make.trailing.equalTo(-80)
            make.height.equalTo(70)
        }
        
        versionLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-45)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
}
