//
//  HomeViewController.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 02/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Super Methods
    override func loadView() {
        view = HomeView(frame: .zero)
        view.backgroundColor = .white
    }
    
    // MARK: - IBActions
    
    // MARK: - Methods
    
}
