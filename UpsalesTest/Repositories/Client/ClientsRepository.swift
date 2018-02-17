//
//  ClientsRepository.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import Alamofire
import Foundation

protocol RemoteClientsRepositoryProtocol {
    func fetchClientsLists(success: @escaping Success, failure: @escaping Failure)
}

class ClientsRepository: RemoteClientsRepositoryProtocol {
    func fetchClientsLists(success: @escaping Success, failure: @escaping Failure) {
        let fetchClientsUrl = ApiConstants.baseURl + ApiConstants.accountsAPI
        let parameters = ["token": ApiConstants.apiToken]
        
        //Call get clients API
        ApiClient.executeRequestWith(url: fetchClientsUrl, method: HTTPMethod.get, headers: nil, parameters: parameters, success: { clientsList in
            success (clientsList)
        }) { error in
            failure(error)
        }
    }
}
