//
//  MyCell.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 2/23/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import Gemini

class MyCell: GeminiCell {
    
    @IBOutlet weak var MainImageView: UIImageView!
    
    //single function for set the image
    func setCell(imageName:String) {
        
        MainImageView.image = UIImage(named: imageName)
    }
}
