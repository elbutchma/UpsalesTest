//
//  ClientsViewController.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import SVProgressHUD
import UIKit

class ClientsViewController: UIViewController {
   
    //MARK:- Outlets
    @IBOutlet weak var clientsTableView: UITableView!
    
    //MARK:- Properties
    let viewControllerTitle = "Companies"
    
    //MARK:- ViewController life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupNavigationBarItems()
    }
    
    private func setupViews() {
        title = viewControllerTitle
    }
    
    private func showLoadingIndicator() {
        SVProgressHUD.show()
    }
    
    private func hideLoadingIndicator() {
        SVProgressHUD.dismiss()
    }
    
    @objc private func filterAction() {
    }
    
    private func setupNavigationBarItems() {
        let filterBarButtonItem = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(filterAction))
        navigationItem.rightBarButtonItem = filterBarButtonItem
    }
}
