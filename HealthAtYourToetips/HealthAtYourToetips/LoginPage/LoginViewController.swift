//
//  LoginViewController.swift
//  HealthAtYourToetips
//
//  Created by Dean Qiu on 3/29/18.
//  Copyright © 2018 casenderqiu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginView, UITextFieldDelegate {
    let configurator = LoginViewConfiguratorImplementation()
    var presenter: LoginViewPresenter!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        configurator.configure(loginViewController: self)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        addResignGestureToBackground()
    }
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        let leftBarButton = UIBarButtonItem(image: #imageLiteral(resourceName: "back"), style: .plain, target: self, action: #selector(leftBarButtonPressed))
        leftBarButton.tintColor = UIColor.white
        self.navigationItem.leftBarButtonItem = leftBarButton
    }
    
    func addResignGestureToBackground() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func keyboardWillHide() {
        if emailTextField.text == "" {
            emailTextField.text = "EMAIL"
        }
        if passwordTextField.text == "" {
            passwordTextField.text = "PASSWORD"
        }
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @objc func leftBarButtonPressed() {
        presenter.leftBarButtonPressed()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - LoginView
    
    
    //MARK: - TextFieldDelegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        let textFieldText = textField.text
        if textFieldText == "EMAIL" || textFieldText == "PASSWORD" {
            textField.text = ""
        }
        return true
    }
}
