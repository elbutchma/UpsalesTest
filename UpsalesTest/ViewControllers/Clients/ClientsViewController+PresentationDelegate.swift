//
//  ClientsViewController+PresentationDelegate.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

extension ClientsViewController: ClientsPresentationProtocol {
    func updateClientsList(clients: ClientsList) {
        clientsList = clients
        hideLoadingIndicator()
    }
    
    func showAPIFailueErrorMessage() {
        UIUtilities.showAlert(on: self, title: "Error", message: "There was an error in loading data, Please try again later")
        hideLoadingIndicator()
    }
}
