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
    //var modelWP = WorldPhotosModel()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return sharedModelWP.arrayList.count
        return WorldPhotosModel.shared.arrayList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = WorldPhotosModel.shared.arrayList[indexPath.row]
        
        let cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell")
/*
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")
            cell.accessoryType = .disclosureIndicator
        }
*/
        //let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        
        (cell.viewWithTag(1) as! UILabel).text = info.nation
        (cell.viewWithTag(2) as! UILabel).text = info.city
        (cell.viewWithTag(3) as! UIImageView).image = UIImage(named: info.image)
        
        //cell.textLabel?.text = info.city
        //cell.detailTextLabel?.text = info.nation
        
        return cell
    }
    
    //테이블 뷰 선택함
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        WorldPhotosModel.shared.selectedIndex = indexPath.row
        
        //let vc = DetailViewController.init(nibName: "DetailVC", bundle: nil)
        
        //vc.modelWP = self.modelWP
        //modelWP.selectedIndex = indexPath.row
        
        //self.navigationController?.pushViewController(vc, animated: true)
    }
}
