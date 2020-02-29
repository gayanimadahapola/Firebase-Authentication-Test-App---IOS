//
//  HomeViewController.swift
//  FirstApp
//
//  Created by Gayani Madubhashini on 1/27/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import UIKit

struct CellData {
    let image : UIImage?
    let message : String?
    }

class TableViewController: UITableViewController {
    
    var data = [CellData]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        data = [CellData.init(image: , message: <#T##String?#>)]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    //number of rows section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    

}
