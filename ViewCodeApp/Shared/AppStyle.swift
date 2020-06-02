//
//  AppStyle.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 01/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

extension UIColor {
    static let mainBlack = UIColor(r: 20, g: 20, b: 20)
    static let mediumGray = UIColor(r: 124, g: 124, b: 124)
    static let basePurple = UIColor(r: 97, g: 97, b: 255)
    static let ultraLightGray = UIColor(r: 251, g: 251, b: 251)
    
    static let title = UIColor.mainBlack
    static let body = UIColor.mediumGray
    static let mainButton = UIColor.basePurple
    static let mainButtonText = UIColor.white
    static let secondaryButton = UIColor.white
    static let secondaryButtonText = UIColor.mainBlack
    static let secondaryButtonBorder = UIColor.mainBlack
    static let view = UIColor.ultraLightGray
}

extension UIFont {
    static let title = UIFont.boldSystemFont(ofSize: 28)
    static let body = UIFont.systemFont(ofSize: 15)
    static let button = UIFont.systemFont(ofSize: 15)
}

enum Margin {
    static let horizontal: CGFloat = 24
    static let horizontalSmall: CGFloat = 10
    static let verticalSmall: CGFloat = 8
    static let verticalNormal: CGFloat = 14
    static let verticalLarge: CGFloat = 20
    static let verticalVeryLarge: CGFloat = 34
}
