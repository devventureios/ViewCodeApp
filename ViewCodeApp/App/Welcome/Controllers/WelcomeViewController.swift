//
//  WelcomeViewController.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 01/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Super Methods
    override func loadView() {
        view = WelcomeView(delegate: self)
    }
    
    // MARK: - IBActions
    
    // MARK: - Methods
    
}

extension WelcomeViewController: WelcomeViewDelegate {
    func loginButtonTapped() {
        print("loginButtonTapped")
    }
    
    func signUpButtonTapped() {
        print("signUpButtonTapped")
    }
    
    func facebookButtonTapped() {
        print("facebookButtonTapped")
    }
    
    func googleButtonTapped() {
        print("googleButtonTapped")
    }
}
