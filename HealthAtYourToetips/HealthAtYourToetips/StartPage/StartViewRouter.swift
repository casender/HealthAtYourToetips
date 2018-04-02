//
//  StartViewRouter.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/30/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import UIKit

protocol StartViewRouter {
    
}

class StartViewRouterImplementation: StartViewRouter {
    weak var startViewController: StartViewController?
    
    init(startViewController: StartViewController) {
        self.startViewController = startViewController
    }
    
    // MARK: - StartViewRouter
    
}
