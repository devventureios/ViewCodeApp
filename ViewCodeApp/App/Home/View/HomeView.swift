//
//  HomeView.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 02/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class HomeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    let welcomeButton: WelcomeButton = {
        let welcomeButton = WelcomeButton(type: .main, title: "Bem vindo a essa tela")
        return welcomeButton
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: CodeView {
    func setupComponents() {
        addSubview(welcomeButton)
    }
    
    func setupContraints() {
        
    }
    
    func setupExtraConfigurations() {
        
    }
    
    
}
