//
//  ClientsPresenter.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import Foundation

protocol ClientsPresentationProtocol: class {
    func updateClientsList(clients: ClientsList)
    func showAPIFailueErrorMessage()
}

class ClientsPresenter {
    //MARK:- Presentation delegate
    weak var presentationDelegate :ClientsPresentationProtocol?
    
    func start() {
        let fetchClientsListUseCase = FetchClientsListUseCase()
        fetchClientsListUseCase.fetchClientsList(success: { clientsList in
            let clients = ClientsList(JSON: clientsList as! [String: Any])
            self.presentationDelegate?.updateClientsList(clients: clients!)
        }) { error in
            self.presentationDelegate?.showAPIFailueErrorMessage()
        }
    }
}
