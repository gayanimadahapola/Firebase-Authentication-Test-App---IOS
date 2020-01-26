//
//  SignUpViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 1/27/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func SignUpTapped(_ sender: Any) {
    }
    
}
