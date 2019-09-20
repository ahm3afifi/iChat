//
//  WelcomeViewController.swift
//  iChat
//
//  Created by Ahmed Afifi on 9/19/19.
//  Copyright © 2019 Ahmed Afifi. All rights reserved.
//

import UIKit
import ProgressHUD

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
        
        if emailTextField.text != "" && passwordTextField.text != "" {
            loginUser()
        } else {
            ProgressHUD.showError("email and password is missing!")
        }
        
        print("Login Pressed")
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        
        dismissKeyboard()
        
        if emailTextField.text != "" && passwordTextField.text != "" && repeatPasswordTextField.text != "" {
            
            if passwordTextField.text == repeatPasswordTextField.text {
                registerUser()
            } else {
                ProgressHUD.showError("passwords don't match")
            }
            
        } else {
            
            ProgressHUD.showError("all fields are required!")
            
        }
        
    }
    
    
    
    // Tap Gesture Recognizer function to dismiss the keyboard
    @IBAction func backgroundTap(_ sender: Any) {
        dismissKeyboard()
        print("keyboard Dismissed")
    }
    
    //MARK: Helper Functions
    
    func loginUser() {
        ProgressHUD.show("Login....")
        FUser.loginUserWith(email: emailTextField.text!, password: passwordTextField.text!) { (error) in
            if error != nil {
                ProgressHUD.showError(error!.localizedDescription)
                return
            }
            self.goToApp()
        }
    }
    
    func registerUser() {
        performSegue(withIdentifier: "welcomeToFinishReg", sender: self)
        cleanTextFields()
        dismissKeyboard()
    }
    
    func dismissKeyboard() {
        self.view.endEditing(false)
    }
    
    func cleanTextFields() {
        emailTextField.text = ""
        passwordTextField.text = ""
        repeatPasswordTextField.text = ""
    }
    
    
    //MARK: GoToApp
    
    func goToApp() {
        ProgressHUD.dismiss()
        cleanTextFields()
        dismissKeyboard()
        
        print("show the app!")
        //present the app here
    }
    
    
    //MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "welcomeToFinishReg" {
            let vc = segue.destination as! FinishRegistrationViewController
            
            // to copy email and password from welcomeVC to FinishRegistrationVC
            vc.email = emailTextField.text!
            vc.password = passwordTextField.text!
        }
    }
    
}
