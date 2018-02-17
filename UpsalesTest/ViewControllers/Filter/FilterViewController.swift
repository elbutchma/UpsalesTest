//
//  FilterViewController.swift
//  UpSalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import SVProgressHUD
import UIKit

class FilterViewController: UIViewController {
    //MARK:- Oultets
    @IBOutlet private weak var filterTableView: UITableView!
    
    //MARK:- Properties
    let filterCellNibName = "FilterUsersTableViewCell"
    let viewControlelrTitle = "Users"
    internal var unSelectedManagersList =  ManagersList() {
        didSet {
            filterTableView.reloadData()
        }
    }
    
    internal var selectedManagersList = ManagersList() {
        didSet {
            filterTableView.reloadData()
        }
    }
    
    //MARK:- ViewController life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupPresenter()
    }
    
    //MARK:- UI setup
    func setupViews() {
        title = viewControlelrTitle
        automaticallyAdjustsScrollViewInsets = false
        let companiesCellNib = UINib(nibName: filterCellNibName, bundle: Bundle.main)
        filterTableView.register(companiesCellNib, forCellReuseIdentifier: filterCellNibName)
        filterTableView.delegate = self
        filterTableView.dataSource = self
        filterTableView.tableFooterView = UIView(frame: CGRect.zero)
    }
    
    internal func showLoadingIndicator() {
        SVProgressHUD.show()
    }
    
    internal func hideLoadingIndicator() {
        SVProgressHUD.dismiss()
    }
    
    
    //MARK:- Presenter
    func setupPresenter() {
        let filtersPresenter = FilterUsersPresenter()
        filtersPresenter.presentationDelegate = self
        showLoadingIndicator()
        filtersPresenter.start()
    }
    
    
    //MARK:- Insiatiation
    class func instantiateFromStoryboard() -> FilterViewController {
        let mainStoryboard = UIStoryboard(name: "Filters", bundle: Bundle.main)
        let filterViewController = mainStoryboard.instantiateViewController(withIdentifier: "FilterViewController") as! FilterViewController
        return filterViewController
    }
    
    //MARK:- IBActions
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func showResultsButtonAction(_ sender: UIButton) {
    }
}

extension FilterViewController: FiltersPresentationProtocol {
    func updateFiltersList(managersList: ManagersList) {
        unSelectedManagersList = managersList
        selectedManagersList.managersList.removeAll()
        hideLoadingIndicator()
    }
    
    func showAPIFailureErrorMessage() {
        
        UIUtilities.showAlert(on: self, title: "Error", message: "There was an error in loading data, Please try again later")
        hideLoadingIndicator()
        
    }
}


