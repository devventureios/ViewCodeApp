//
//  WelcomeButton.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 01/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

enum WelcomeButtonType {
    case main, secondary
}

class WelcomeButton: UIButton {

    var type: WelcomeButtonType = .main
    var title: String = ""
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(type: WelcomeButtonType, title: String) {
        self.init(frame: .zero)
        self.type = type
        self.title = title
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func commonInit() {
        let titleColor: UIColor
        let bgColor: UIColor
        
        switch type {
        case .main:
            titleColor = .mainButtonText
            bgColor = .mainButton
        case .secondary:
            titleColor = .secondaryButtonText
            bgColor = .secondaryButton
            layer.borderWidth = 2
            layer.borderColor = UIColor.secondaryButtonBorder.cgColor
        }
        
        titleLabel?.font = .button
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = bgColor
        clipsToBounds = true
        layer.cornerRadius = 25
        translatesAutoresizingMaskIntoConstraints = false
    }

}
