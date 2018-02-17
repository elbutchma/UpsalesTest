//
//  ClientsTableViewCell.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class ClientsTableViewCell: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet private weak var companyNameLabel: UILabel!
    @IBOutlet private weak var companyManagerLabel: UILabel!
    
    //MARK:- UITableViewCell life cycle
    override func awakeFromNib() {
        super.awakeFromNib()

        selectionStyle = .none
    }

    //MARK:- Configuration
    func configureCell(with companyName: String, companyManager: String) {
        companyNameLabel.text = companyName
        companyManagerLabel.text = companyManager
    }
}
