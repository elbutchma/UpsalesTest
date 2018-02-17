//
//  RootNavigationController.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class RootNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBarStyles()
    }

    func setupNavigationBarStyles() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBar.tintColor = .white
        navigationBar.barTintColor = UIColor.upsalesDarkBlueColor()
        navigationBarAppearace.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        
        if #available(iOS 11.0, *) {
            navigationBar.prefersLargeTitles = true
        }
        
    }
}
