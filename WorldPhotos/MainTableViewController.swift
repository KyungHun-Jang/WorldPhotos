//
//  MainTableViewController.swift
//  WorldPhotos
//
//  Created by ktds 10 on 02/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//
import UIKit
import Foundation

class MainTableViewController : UITableViewController {
    let modelWP = WorldPhotosModel()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelWP.arrayList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = modelWP.arrayList[indexPath.row]
        
        var cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")
        }
        
        //let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        
        cell.textLabel?.text = info.city
        cell.detailTextLabel?.text = info.nation
        
        return cell
    }
}
