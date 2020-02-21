//
//  UIViewExtension.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 2/22/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradiantBackground(colorOne: UIColor, colorTwo: UIColor) {
        
        //instantiate the gradiant objects
        let gradiantLayer = CAGradientLayer()
        
        //Adding properties to gradiant layer
        gradiantLayer.frame = bounds
        gradiantLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradiantLayer.locations = [0.0, 1.0] //isnt required
        gradiantLayer.startPoint = CGPoint(x: 1.0, y: 1.0) //this is where the gradiant start
        gradiantLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradiantLayer, at: 0)
        
    }
}
