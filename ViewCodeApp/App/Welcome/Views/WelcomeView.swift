//
//  WelcomeView.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 01/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

protocol WelcomeViewDelegate: class {
    func loginButtonTapped()
    func signUpButtonTapped()
    func facebookButtonTapped()
    func googleButtonTapped()
}

final class WelcomeView: UIView {

    // MARK: Properties
    weak var delegate: WelcomeViewDelegate?

    let mainImage: UIImageView = {
        let image: UIImage = #imageLiteral(resourceName: "home")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Bem-vindo"
        label.textAlignment = .center
        label.font = .title
        label.textColor = .title
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bodyLabel: UILabel = {
        let label = UILabel()
        label.text = "Vamos nos exercitar? Aqui você poderá criar o treino ideal!"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .body
        label.textColor = .body
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Telefone"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .phonePad
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let loginButton = WelcomeButton(type: .main, title: "Login")
    let signUpButton = WelcomeButton(type: .secondary, title: "Sign Up")
    
    let buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = Margin.horizontalSmall
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let footerLabel: UILabel = {
        let label = UILabel()
        label.text = "Ou via redes sociais"
        label.textAlignment = .center
        label.font = .body
        label.textColor = .body
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let socialStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = Margin.horizontalSmall
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let facebookButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "facebook"), for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let googleButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "google"), for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: Constructors
    init(delegate: WelcomeViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Methods
    @objc func buttonTapped(sender: UIButton) {
        switch sender {
        case loginButton:
            delegate?.loginButtonTapped()
        case signUpButton:
            delegate?.signUpButtonTapped()
        case facebookButton:
            delegate?.facebookButtonTapped()
        case googleButton:
            delegate?.googleButtonTapped()
        default:
            break
        }
    }
}

extension WelcomeView: CodeView {
    func setupComponents() {
        addSubview(mainImage)
        addSubview(titleLabel)
        addSubview(bodyLabel)
        addSubview(emailTextField)
        addSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(loginButton)
        buttonsStackView.addArrangedSubview(signUpButton)
        addSubview(footerLabel)
        addSubview(socialStackView)
        socialStackView.addArrangedSubview(facebookButton)
        socialStackView.addArrangedSubview(googleButton)
    }
    
    func setupContraints() {
        //NSLayoutContraint
        /*
        let imageTopConstraint = NSLayoutConstraint(item: mainImage, attribute: .top, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .top, multiplier: 1.0, constant: Margin.verticalVeryLarge)
        let imageLeadingConstraint = NSLayoutConstraint(item: mainImage, attribute: .leading, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .leading, multiplier: 1.0, constant: Margin.horizontal)
        let imageTrailingConstraint = NSLayoutConstraint(item: mainImage, attribute: .trailing, relatedBy: .equal, toItem: safeAreaLayoutGuide, attribute: .trailing, multiplier: 1.0, constant: -Margin.horizontal)
        let imageHeightConstraint = NSLayoutConstraint(item: mainImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200)
        NSLayoutConstraint.activate([imageTopConstraint, imageLeadingConstraint, imageTrailingConstraint, imageHeightConstraint])
        */
        
        //VFL (Visual Format Language)
        /*
        let views = ["mainImage": mainImage, "view": self, "safe": safeAreaLayoutGuide]
        let horizontalVFL = "H:|-24-[mainImage]-24-|"
        let horizontalContraints = NSLayoutConstraint.constraints(withVisualFormat: horizontalVFL, options: [], metrics: nil, views: views)
        let verticalVFL = "V:|-48-[mainImage(200)]"
        let verticalContraints = NSLayoutConstraint.constraints(withVisualFormat: verticalVFL, options: [], metrics: nil, views: views)
        self.addConstraints(horizontalContraints)
        self.addConstraints(verticalContraints)
         */
        
        //Layout Anchor
        //Imagem
        mainImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Margin.verticalVeryLarge).isActive = true
        mainImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: Margin.horizontal).isActive = true
        mainImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -Margin.horizontal).isActive = true
        mainImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3, constant: 0).isActive = true
        
        //Título
        titleLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: Margin.verticalVeryLarge).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 0).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: 0).isActive = true
        
        //Subtítulo
        bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Margin.verticalSmall).isActive = true
        bodyLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0).isActive = true
        bodyLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 0).isActive = true
        
        //Textfield
        emailTextField.topAnchor.constraint(equalTo: bodyLabel.bottomAnchor, constant: Margin.verticalLarge).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: bodyLabel.leadingAnchor, constant: 0).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: bodyLabel.trailingAnchor, constant: 0).isActive = true
        
        //StackView
        buttonsStackView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: Margin.verticalNormal).isActive = true
        buttonsStackView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        
        //Botões
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        signUpButton.heightAnchor.constraint(equalTo: loginButton.heightAnchor, multiplier: 1).isActive = true
        
        //Botões Sociais
        facebookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        facebookButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        googleButton.heightAnchor.constraint(equalTo: facebookButton.heightAnchor, multiplier: 1).isActive = true
        
        //Social StackView
        socialStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -Margin.verticalNormal).isActive = true
        socialStackView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        
        //Footer Label
        footerLabel.bottomAnchor.constraint(equalTo: socialStackView.topAnchor, constant: -Margin.verticalNormal).isActive = true
        footerLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
    }
    
    func setupExtraConfigurations() {
        backgroundColor = .view
        loginButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        facebookButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        googleButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
}
