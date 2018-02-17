//
//  Client.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import ObjectMapper

struct Client: Mappable {
    var accountId: Int?
    var name:String = ""
    var users :[User] = [User]()
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        accountId <- map["id"]
        name <- map["name"]
        users <- map["users"]
    }
}
