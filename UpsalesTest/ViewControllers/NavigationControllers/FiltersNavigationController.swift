//
//  FiltersNavigationController.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class FiltersNavigationController: UINavigationController {
    
    //MARK:- Navigation controller lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBarStyles()
    }

    //MARK:- UI configuration
    func setupNavigationBarStyles() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBar.barTintColor = UIColor.white
        navigationBarAppearace.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.upsalesDarkBlueColor()]
      
        if #available(iOS 11.0, *) {
            navigationBar.prefersLargeTitles = true
        }
    }
    
    //MARK:- Instantiation
    class func instantiateFromStoryboard() -> FiltersNavigationController {
        let mainStoryboard = UIStoryboard(name: "Filters", bundle: Bundle.main)
        let filtersNavigationController = mainStoryboard.instantiateViewController(withIdentifier: "FiltersNavigationController") as! FiltersNavigationController
        return filtersNavigationController
    }
}
