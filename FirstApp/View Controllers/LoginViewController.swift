//
//  LoginViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 1/27/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        
        //Hide the error label
        ErrorLabel.alpha = 0
        
        //Style the elements
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleFilledButton(LoginButton)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func LoginTapped(_ sender: Any) {
    }
    
}
