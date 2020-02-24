//
//  VideoListViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 2/23/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    
    var videos: [Video] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image:  , title: )
        
        tempVideos.append(video1)
        
        return tempVideos
        
    }
    

}
