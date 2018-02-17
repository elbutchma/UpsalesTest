//
//  FiltersUseCase.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import Foundation

class FiltersUseCase: NSObject {
    func fetchFilters(success: @escaping Success, failure: @escaping Failure) {
        let filtersRepository = FiltersRepository()
        
        filtersRepository.fetchFiltersLists(success: { filters in
            success(filters)
        }) { error in
            failure(error)
        }
    }
}

