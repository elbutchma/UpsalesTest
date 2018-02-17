//
//  FiltersRepository.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import Alamofire
import Foundation

protocol FiltersRepositoryProtocol {
    func fetchFiltersLists(success: @escaping Success, failure: @escaping Failure)
}

class FiltersRepository: FiltersRepositoryProtocol {
    func fetchFiltersLists(success: @escaping Success, failure: @escaping Failure) {
        let fetchFiltersUrl = ApiConstants.baseURl + ApiConstants.accountsAPI
        let parameters = ["token": ApiConstants.apiToken, "user.id": "1"]
        ApiClient.executeRequestWith(url: fetchFiltersUrl, method: HTTPMethod.get, headers: nil, parameters: parameters, success: { accounts in
            success (accounts)
        }) { error in
            failure(error)
        }
    }
}
