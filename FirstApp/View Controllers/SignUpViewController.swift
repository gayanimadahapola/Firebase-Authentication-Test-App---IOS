//
//  SignUpViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 1/27/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var FirstNameTextField: UITextField!
    
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
        view.setGradiantBackground(colorOne: Colors.blue , colorTwo: Colors.white)
    }
    
    func setUpElements(){
        
        //HIde the error label
        ErrorLabel.alpha = 0
        
        //Style the elements
        Utilities.styleTextField(FirstNameTextField)
        Utilities.styleTextField(LastNameTextField)
        Utilities.styleTextField(EmailTextField)
        Utilities.styleTextField(PasswordTextField)
        Utilities.styleFilledButton(SignUpButton)
        
        
    }
    //method to validate field
    //check the fields and validate that the data is correct. if all corrects, this method return nil.otherwise it return the error message.
    
    func validateFields() -> String? {
        
        //check all fields are filled
        if FirstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            LastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            EmailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
            {
            return "Please fill the all fields."
        }
        
        //check if the password is incorrect
        let cleanedPassword = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            
            //password isnt secure enough
            return"Password must have 8 characters, contains a special character and a number"
        }
        
        
        return nil
    }
    
    @IBAction func SignUpTapped(_ sender: Any) {
        
        //Validate the fields
        let error = validateFields()
        
        if error != nil{
            //show error message, when something wrong in the fields
            showError(error!)
        }
        else{
            //create cleaned version of the data
            let firstName = FirstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = LastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            
            //Creating the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                //check errors
                if err != nil{
                   //There was and error creating the user
                    self.showError("Error creating user")
                }
                else{
                    //user was created successfully, now store the firstname and lastname
                    let db  = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["firstname" : firstName, "lastName":lastName, "uid" : result!.user.uid]) {
                        (error) in
                        
                        if error != nil {
                            //show error message
                            self.showError("Error saving user data")
                        }
                    }
                    //Transition to the Home Screen
                    self.transitionToHome()
                }
            }
            
        }
        
    }
    func showError(_ message:String){
        
        ErrorLabel.text = message
        ErrorLabel.alpha = 1
    }
    func transitionToHome() {
         
        let homeViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
    
}
