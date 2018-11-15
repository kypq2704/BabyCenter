//
//  UIviewController+extension.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/15.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showError(_title: String, _message: String){
        let alertController: UIAlertController = UIAlertController(title: _title, message: _message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
}