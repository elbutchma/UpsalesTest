//
//  Manager.swift
//  UpSalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import ObjectMapper

struct ManagersList: Mappable{
    var managersList = [Manager]()
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        managersList <- map["data"]
    }
    
}

struct Manager: Mappable {
    var active: Int?
    var name: String?
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        active <- map["name"]
        name <- map["name"]
    }
    

}

