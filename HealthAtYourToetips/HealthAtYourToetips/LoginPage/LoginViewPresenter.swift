//
//  LoginViewPresenter.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/29/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import Foundation

protocol LoginView: class {
    
}

protocol LoginViewPresenter {
    func viewDidLoad()
}

class LoginViewPresenterImplementation: LoginViewPresenter {
    weak var view: LoginView?
    let router: LoginViewRouter
    
    init(view: LoginView, router: LoginViewRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: - LoginViewPresenter
    func viewDidLoad() {
        
    }
}
