//
//  ViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 1/27/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignUpButton: UIButton!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElements()
    }

    func  setUpElements(){
     
        Utilities.styleFilledButton(SignUpButton)
        Utilities.styleHollowButton(LoginButton)
    }

}

