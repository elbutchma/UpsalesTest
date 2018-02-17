//
//  FilterCriteriaViewController.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class FilterCriteriaViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet private weak var fitlerCriteriaTableView: UITableView!
    
    //MARK:- properties
    let viewControllerTitle = "Filters"
    let filterCriteriaCellNibName = "FilterCriteriaTableViewCell"
    
    //MARK:- ViewController lifeccycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    //MARK:- Setup UI
    func setupViews() {
        title = "Filters"
        let filterCellNib = UINib(nibName: filterCriteriaCellNibName, bundle: Bundle.main)
        fitlerCriteriaTableView.register(filterCellNib, forCellReuseIdentifier: filterCriteriaCellNibName)
        fitlerCriteriaTableView.delegate = self
        fitlerCriteriaTableView.dataSource = self
        fitlerCriteriaTableView.tableFooterView = UIView(frame: CGRect.zero)
        
    }
    
    //MARK:- IBActions
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        navigationController?.dismiss(animated: true, completion: {
        })
    }
}
