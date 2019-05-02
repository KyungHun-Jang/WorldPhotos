//
//  MapViewController.swift
//  WorldPhotos
//
//  Created by ktds 10 on 02/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//
import UIKit
import Foundation
import MapKit

let TAG_MAP = 1

class MapViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let info = WorldPhotosModel.shared.currentInfo()
        let map = view.viewWithTag(TAG_MAP) as! MKMapView
        
        let span = MKCoordinateSpan(latitudeDelta: 0.08, longitudeDelta: 0.08)
        let region = MKCoordinateRegion(center: info.location, span: span)
        
        map.setRegion(region, animated: true)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}
