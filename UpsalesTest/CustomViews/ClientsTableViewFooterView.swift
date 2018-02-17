//
//  ClientsTableViewFooterView.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/18/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class ClientsTableViewFooterView: UIView {
    @IBOutlet private var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadNibFile()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        loadNibFile()
    }
    
    func loadNibFile() {
        Bundle.main.loadNibNamed("ClientsTableViewFooterView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

}
