//
//  UIUtilities.swift
//  UpsalesTest
//
//  Created by Mostafa Elbutch on 2/17/18.
//  Copyright © 2018 Mostafa Elbutch. All rights reserved.
//

import UIKit

class UIUtilities: NSObject {
    class func showAlert(on viewConttoller: UIViewController, title: String, message: String) {
        
        let alert=UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert);
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        viewConttoller.present(alert, animated: true, completion: nil)
    }
}
