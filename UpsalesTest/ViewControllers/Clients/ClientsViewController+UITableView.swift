//
//  ClientsViewController+UITableView.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

extension ClientsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clientsList.clientsList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: clientsTableViewCellIdentifier) as! ClientsTableViewCell
        let client = clientsList.clientsList[indexPath.row]
        var managerName = client.users.first?.name
        
        if managerName == nil {
            managerName = ""
        }
        
        cell.configureCell(with: client.name, companyManager: managerName!)
        
        return cell
    }
}
