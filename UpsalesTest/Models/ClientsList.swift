//
//  ClientsList.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import ObjectMapper

struct ClientsList: Mappable {
    var clientsList =  [Client]()
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        clientsList <- map["data"]
    }
}
