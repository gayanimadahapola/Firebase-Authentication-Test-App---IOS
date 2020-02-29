//
//  ViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 1/27/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit
import  LocalAuthentication

class ViewController: UIViewController {
    
    //let  context: LAContext = LAContext()
  
    var gradientLayer: CAGradientLayer!

    @IBOutlet weak var SignUpButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //call extension,To Add gradiant background 
        view.setGradiantBackground(colorOne: Colors.blue , colorTwo: Colors.white)
        
        setUpElements()
    }
//    //touch id authetication to login
//    @IBAction func LoginTapped(_ sender: Any) {
//
//        authenticateUsingTouchID()
//    }
//
//    func authenticateUsingTouchID() {
//
//        let authContext = LAContext()
//        let authReason = "Please use touch ID to LOGIN"
//        var authError = NSError?
//
//        if authContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &authError){
//            authContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: authReason, reply: { (success, error ) -> Void in
//                if success{
//                    print("authenticate successfully!")
//
//                    }
//                }
//            })
//        }
//                else{
//            //we have an error
//            print(authError?.localizedDescription)
//
//            //show the normal login screen
//        }
//    }
    /* ERROR LIST
    func reportTouchIDError(error: NSError)
    {
        switch error.code {
        case LAError.authenticationFailed:rawValue:
            print("Authentication Failed!")
        case LAError.passcodeNotSet:rawValue:
        print("Passcode not set!")
        case LAError.systemCancel:rawValue:
        print("Passcode not set!")
        case LAError.userCancel:rawValue:
        print("Passcode not set!")
        case LAError.touchIDNotEnrolled:rawValue:
        print("Passcode not set!")
        case LAError.touchIDNotAvailable:rawValue:
        print("Passcode not set!")
        case LAError.userFallback:rawValue:
        print("Passcode not set!")
        default:
            print(error.localizedDescription)
        }
    }*/
    
    
    @IBAction func TouchID(_ sender: Any) {
        //call Touch ID or Face ID
        TouchIDCall()
        
    }
    
    func TouchIDCall(){
        
        let  context: LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil){
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Login with finger print", reply: { (wasCorrect, error )in
                if wasCorrect
                {
                    print("Correct!")
                }else{
                    print("Incorrect!")
                }
            })
        }
        else
        {
            //alert it doesnt support touch ID
        }
        
    }
    
//    //Hide the navigation bar
//    override func viewWillAppear(_ animated: Bool) {
//        navigationController?.isNavigationBarHidden = true
//    }

    func  setUpElements(){
        Utilities.styleFilledButton(SignUpButton)
        Utilities.styleHollowButton(LoginButton)
    }

}

