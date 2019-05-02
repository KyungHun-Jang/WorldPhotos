//
//  DetailViewController.swift
//  WorldPhotos
//
//  Created by ktds 10 on 02/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//
import UIKit
import Foundation

let TAG_CITY = 1
let TAG_COUNTRY = 2
let TAG_IMAGE = 3

class DetailViewController : UIViewController {
    //var modelWP:WorldPhotosModel!
    
    @IBOutlet var btnBack:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let info = WorldPhotosModel.shared.arrayList[WorldPhotosModel.shared.selectedIndex]
        
        let labelLeft = self.view.viewWithTag(TAG_CITY) as? UILabel
        let labelRight = self.view.viewWithTag(TAG_COUNTRY) as? UILabel
        let viewImage = self.view.viewWithTag(TAG_IMAGE) as? UIImageView
        
                
        labelLeft?.text = info.city
        labelRight?.text = info.nation
        viewImage?.image = UIImage(named: info.image)
        
        //self.navigationItem.rightBarButtonItem = self.btnBack
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let labelLeft = self.view.viewWithTag(TAG_CITY) as? UILabel
    }
    @IBAction func touchMap(){
        let vc = MapViewController(nibName: "MapVC", bundle: nil)
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
