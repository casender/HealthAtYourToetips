//
//  LoginViewConfigurator.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/29/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import Foundation

protocol LoginViewConfigurator {
    func configure(loginViewController: LoginViewController)
}

class LoginViewConfiguratorImplementation: LoginViewConfigurator {
    
    func configure(loginViewController: LoginViewController) {
        let router = LoginViewRouterImplementation(loginViewController: loginViewController)
        let presenter = LoginViewPresenterImplementation(view: loginViewController, router: router)
        
        loginViewController.presenter = presenter
    }
}
