//
//  StartViewPresenter.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/30/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import UIKit

protocol StartView: class {
    
}

protocol StartViewPresenter {
    func loginButtonPressed()
    func customizeButton(_ button: UIButton)
}

class StartViewPresenterImplementation: StartViewPresenter {
    weak var view: StartView?
    var router: StartViewRouter
    
    init(view: StartView, router: StartViewRouter) {
        self.view = view
        self.router = router
    }
    
    func loginButtonPressed() {
        router.goBackToLoginPage()
    }
    
    func customizeButton(_ button: UIButton) {
        button.layer.cornerRadius = button.frame.height / 2
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
    }
}
