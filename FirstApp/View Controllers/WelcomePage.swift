//
//  WelcomePage.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 2/26/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class WelcomePage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            self.performSegue(withIdentifier: "NextPage", sender: nil)
        }
    }
}
