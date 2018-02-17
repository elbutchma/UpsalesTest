//
//  ApiClient.swift
//  UpSalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import Alamofire
import ObjectMapper
import Foundation

typealias Success = (Any) -> Void
typealias Failure = (Error?) -> Void

class ApiClient: NSObject {
    
    // Used to consume APIs with any HTTP method
    static func executeRequestWith(url: String, method: HTTPMethod, headers: HTTPHeaders?,parameters: Dictionary<String, Any>, success: @escaping Success, failure: @escaping Failure) {
        
        Alamofire.request(url, method: method, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (response: DataResponse<Any>) in
            
            switch response.result {
            case .success: // request success case
                
                if let response = response.result.value {
                    success(response)
                }
                
            case .failure: // request failure case
                
                if let error = response.result.error {
                    failure(error)
                }
            }
        }
    }
}

