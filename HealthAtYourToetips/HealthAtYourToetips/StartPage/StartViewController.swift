//
//  StartViewController.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/30/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, StartView {
    let configurator = StartViewConfiguratorImplementation()
    var presenter: StartViewPresenter!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(startViewController: self)
        presenter.customizeButton(signUpButton)
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        presenter.loginButtonPressed()
    }
}
