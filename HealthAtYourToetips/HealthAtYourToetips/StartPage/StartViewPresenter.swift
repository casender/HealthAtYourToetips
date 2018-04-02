//
//  StartViewPresenter.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/30/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import Foundation

protocol StartView: class {
    
}

protocol StartViewPresenter {
    
}

class StartViewPresenterImplementation: StartViewPresenter {
    weak var view: StartView?
    var router: StartViewRouter
    
    init(view: StartView, router: StartViewRouter) {
        self.view = view
        self.router = router
    }
    
    
}
