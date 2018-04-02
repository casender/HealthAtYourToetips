//
//  LoginViewController.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/29/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginView {
    let configurator = LoginViewConfiguratorImplementation()
    var presenter: LoginViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        configurator.configure(loginViewController: self)
        
    }
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        let leftBarButton = UIBarButtonItem(image: #imageLiteral(resourceName: "back"), style: .plain, target: self, action: #selector(leftBarButtonPressed))
        leftBarButton.tintColor = UIColor.white
        self.navigationItem.leftBarButtonItem = leftBarButton
    }
    
    @objc func leftBarButtonPressed() {
        presenter.leftBarButtonPressed()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - LoginView
    
}
