//
//  CodeView.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 01/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import Foundation

protocol CodeView {
    func setup()
    func setupComponents()
    func setupContraints()
    func setupExtraConfigurations()
}

extension CodeView {
    func setup() {
        setupComponents()
        setupContraints()
        setupExtraConfigurations()
    }
}
