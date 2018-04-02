//
//  LoginViewRouter.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/29/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import UIKit

protocol LoginViewRouter {
    func goToStartPage()
}

class LoginViewRouterImplementation: LoginViewRouter {
    weak var loginViewController: LoginViewController?
    
    init(loginViewController: LoginViewController) {
        self.loginViewController = loginViewController
    }
    
    //MARK: - LoginViewRouter
    func goToStartPage() {
        loginViewController?.present(StartViewController(), animated: true, completion: nil)
    }
    
}
