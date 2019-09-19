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
        print("Login Pressed")
        
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        print("Register Pressed")
        
    }
    
    // Tap Gesture Recognizer function to dismiss the keyboard
    @IBAction func backgroundTap(_ sender: Any) {
        print("keyboard Dismissed")
        
    }
    
    
}
