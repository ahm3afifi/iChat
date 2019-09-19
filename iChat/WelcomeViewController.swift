//
//  WelcomeViewController.swift
//  iChat
//
//  Created by Ahmed Afifi on 9/19/19.
//  Copyright © 2019 Ahmed Afifi. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: IBActions
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        dismissKeyboard()
        print("Login Pressed")
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        dismissKeyboard()
        print("Register Pressed")
    }
    
    // Tap Gesture Recognizer function to dismiss the keyboard
    @IBAction func backgroundTap(_ sender: Any) {
        dismissKeyboard()
        print("keyboard Dismissed")
    }
    
    //MARK: Helper Functions
    
    func dismissKeyboard() {
        self.view.endEditing(false)
    }
    
    func cleanTextFields() {
        emailTextField.text = ""
        passwordTextField.text = ""
        repeatPasswordTextField.text = ""
    }
    
    
}
