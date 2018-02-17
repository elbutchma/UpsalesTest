//
//  FilterUsersPresenter.swift
//  UpSalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import Foundation

protocol FiltersPresentationProtocol: class {
    func updateFiltersList(managersList: ManagersList)
    func showAPIFailureErrorMessage()
}

class FilterUsersPresenter {
    //MARK:- Delegate
    weak var presentationDelegate :FiltersPresentationProtocol?
    
    func start() {
        let filtersUseCase = FiltersUseCase()
        filtersUseCase.fetchFilters(success: { filters in
            let managersList = ManagersList(JSON: filters as! [String: Any])
            self.presentationDelegate?.updateFiltersList(managersList: managersList!)
        }) { error in
            self.presentationDelegate?.showAPIFailureErrorMessage()
        }
    }
}

