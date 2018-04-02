//
//  StartViewConfigurator.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/30/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import Foundation

protocol StartViewConfigurator {
    func configure(startViewController: StartViewController)
}

class StartViewConfiguratorImplementation: StartViewConfigurator {
    
    func configure(startViewController: StartViewController) {
        let router = StartViewRouterImplementation(startViewController: startViewController)
        let presenter = StartViewPresenterImplementation(view: startViewController, router: router)
        
        startViewController.presenter = presenter
    }
}
