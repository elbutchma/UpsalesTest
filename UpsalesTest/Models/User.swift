//
//  User.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import ObjectMapper

struct User: Mappable {
    var userId: Int = 0
    var name: String = ""
    var role: String = ""
    var email: String = ""
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        userId <- map["id"]
        name <- map["name"]
        role <- map["role"]
        email <- map["email"]
    }
}
