//
//  FetchClientsListUseCase.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class FetchClientsListUseCase: NSObject {
    
    func fetchClientsList(success: @escaping Success, failure: @escaping Failure) {
        let clientsRepository = ClientsRepository()
        
        clientsRepository.fetchClientsLists (success: { accountsList in
            success(accountsList)
        }, failure: { error in
            failure(error)
        })
    }
}
