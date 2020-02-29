//
//  LoginViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 1/27/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
        view.setGradiantBackground(colorOne: Colors.blue , colorTwo: Colors.white)
    }
    
    func setUpElements(){
        
        //Hide the error label
        ErrorLabel.alpha = 0
        
        //Style the elements
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(LoginButton)
    }
    
    
    @IBAction func LoginTapped(_ sender: Any) {
        
        //create cleaned verdion of the textfields
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
//        //Alert handling----> 
//        let alert = UIAlertController(title: "Alert", message: "Email or password is not matching!", preferredStyle: .alert)
//        let OK = UIAlertAction(title: "OK", style: .default, handler:   nil)
//        alert.addAction(OK)
        
        
        //Sign in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil {
                //couldn't signin
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
            }
            else{
                    
                    let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
                    
                    self.view.window?.rootViewController = homeViewController
                    self.view.window?.makeKeyAndVisible()
            }
        }
    }
    
}
