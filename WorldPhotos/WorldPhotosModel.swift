//
//  WorldPhotosModel.swift
//  WorldPhotos
//
//  Created by ktds 10 on 02/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import Foundation

struct LocalInfo {
    let city:String
    var nation:String
}

struct WorldPhotosModel {
    var arrayList:[LocalInfo]
    
    init(){
        self.arrayList = []
        
        let info = LocalInfo(city: "블라디보스토크", nation: "러시아")
        
        self.arrayList.append(info)
        
        self.arrayList.append(LocalInfo(city: "바르셀로나", nation: "스페인"))
        self.arrayList.append(LocalInfo(city: "파리", nation: "프랑스"))
        self.arrayList.append(LocalInfo(city: "런던", nation: "영국"))
    }
    
}
