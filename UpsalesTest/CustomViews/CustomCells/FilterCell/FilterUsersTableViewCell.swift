//
//  FilterUsersTableViewCell.swift
//  UpSalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class FilterUsersTableViewCell: UITableViewCell {
    @IBOutlet private weak var checkedView: UIView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupCheckedView()
    }
    
    func setupCheckedView() {
        checkedView.layer.cornerRadius = checkedView.frame.height/2
        checkedView.layer.borderColor = UIColor.gray.cgColor
        checkedView.layer.borderWidth = 1
        checkedView.clipsToBounds = true
    }
    
    func configure(with name: String, isChecked: Bool) {
        nameLabel.text = name
        
        if isChecked == true {
            checkedView.backgroundColor = UIColor(hex: 0x052A4F)
        } else {
            checkedView.backgroundColor = .white
        }
    }
}
