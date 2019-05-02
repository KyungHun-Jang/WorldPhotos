//
//  WelcomeViewController.swift
//  WorldPhotos
//
//  Created by ktds 10 on 02/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//
import UIKit
import Foundation

class WelcomeViewController : UIViewController {
    @IBAction func touchGo(_ sender:Any){
        print("start button touched!!")
        
        // next view : MainTableViewController
        let vc = MainTableViewController(nibName: "MainTableVC", bundle: nil)
        
        // navigation controller 에 push
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
