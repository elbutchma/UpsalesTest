//
//  FilterViewController+UITableView.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

extension FilterViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return selectedManagersList.managersList.count
        } else {
            return unSelectedManagersList.managersList.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: filterCellNibName) as! FilterUsersTableViewCell
        
        if indexPath.section == 0 {
            let manager = selectedManagersList.managersList[indexPath.row]
            cell.configure(with: manager.name!, isChecked: true)
        } else {
            let manager = unSelectedManagersList.managersList[indexPath.row]
            cell.configure(with: manager.name!, isChecked: false)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let manager = selectedManagersList.managersList[indexPath.row]
            selectedManagersList.managersList.remove(at: indexPath.row)
            unSelectedManagersList.managersList.append(manager)
            
        } else {
            let manager = unSelectedManagersList.managersList[indexPath.row]
            unSelectedManagersList.managersList.remove(at: indexPath.row)
            selectedManagersList.managersList.append(manager)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var titleForHeader = ""
        
        if section == 0 {
            titleForHeader = String(selectedManagersList.managersList.count) + " selected"
        } else {
            titleForHeader = String(unSelectedManagersList.managersList.count) + " users"
        }
        
        return titleForHeader
    }
    
    func tableView(tableView: UITableView, willDisplayHeaderView view:UIView, forSection: Int) {
        if let headerView = view as? UITableViewHeaderFooterView {
            headerView.textLabel?.textColor = UIColor.init(hex: 0x666666)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
