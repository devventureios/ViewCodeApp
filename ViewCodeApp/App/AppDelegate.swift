//
//  AppDelegate.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 01/06/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

//https://drive.google.com/file/d/1I-KgCpnoAmTJBZ6x_3nt1i3d9jjiiw-m/view?usp=sharing

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let welcomeViewController = WelcomeViewController()
        
        //Se quiser utilizar uma NavigationController
        //let navigationController = UINavigationController()
        //navigationController.viewControllers = [welcomeViewController]
        //window?.rootViewController = navigationController
        
        window?.rootViewController = welcomeViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

