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
    var clientsPresenter: ClientsPresenter?
    let clientsTableViewCellIdentifier = "ClientsTableViewCell"
    internal var clientsList = ClientsList() {
        didSet {
            clientsTableView.reloadData()
        }
    }
    
    //MARK:- ViewController life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupTableView()
        setupNavigationBarItems()
        setupPresenter()
    }
    
    //MARK:- UI setup
    private func setupTableView() {
        let clientsCellNib = UINib(nibName: clientsTableViewCellIdentifier, bundle: Bundle.main)
        clientsTableView.register(clientsCellNib, forCellReuseIdentifier: clientsTableViewCellIdentifier)
        clientsTableView.delegate = self
        clientsTableView.dataSource = self
        clientsTableView.tableFooterView = UIView(frame: CGRect.zero)
    }
    
    private func setupViews() {
        title = viewControllerTitle
    }
    
    //MARK:- Loading indicator
    internal func showLoadingIndicator() {
        SVProgressHUD.show()
    }
    
    internal func hideLoadingIndicator() {
        SVProgressHUD.dismiss()
    }
    
    //MARK:- Presenter
    private func setupPresenter() {
        clientsPresenter = ClientsPresenter()
        clientsPresenter?.presentationDelegate = self
        showLoadingIndicator()
        clientsPresenter?.start()
    }
    
    @objc private func filterAction() {
        let filterCriteriaNavigationController = FiltersNavigationController.instantiateFromStoryboard()
        navigationController?.present(filterCriteriaNavigationController, animated: true, completion: {})
    }
    
    private func setupNavigationBarItems() {
        let filterBarButtonItem = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(filterAction))
        navigationItem.rightBarButtonItem = filterBarButtonItem
    }
}
