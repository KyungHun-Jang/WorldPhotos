//
//  WorldPhotosModel.swift
//  WorldPhotos
//
//  Created by ktds 10 on 02/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import Foundation
import MapKit

struct LocalInfo {
    let city:String
    let nation:String
    let image:String
    let location:CLLocationCoordinate2D
}

struct WorldPhotosModel {
    static var shared = WorldPhotosModel()
    
    var arrayList:[LocalInfo]
    var selectedIndex:Int
    
    init(){
        self.arrayList = []
        self.selectedIndex = 0
        
        // 43.123544, 131.898498
        let info = LocalInfo(city: "블라디보스토크", nation: "러시아", image: "bladi", location: CLLocationCoordinate2D(latitude: 43.123544, longitude: 131.898498))
        
        self.arrayList.append(info)
        //41.392806, 2.199937
        self.arrayList.append(LocalInfo(city: "바로셀로나", nation: "스페인", image: "spain", location: CLLocationCoordinate2D(latitude: 41.392806, longitude: 2.199937)))
        //48.856328, 2.352549
        self.arrayList.append(LocalInfo(city: "파리", nation: "프랑스", image: "pari", location: CLLocationCoordinate2D(latitude: 48.856328, longitude: 2.352549)))
        //51.517999, -0.129770
        self.arrayList.append(LocalInfo(city: "런던", nation: "영국", image: "london", location: CLLocationCoordinate2D(latitude: 51.517999, longitude: -0.129770)))
    }
    /// 요거를 호출하면 마지막 선택된 지역정보를 반환한다
    func currentInfo() -> LocalInfo{
        return arrayList[selectedIndex]
    }
    
}

//var sharedModelWP = WorldPhotosModel()
