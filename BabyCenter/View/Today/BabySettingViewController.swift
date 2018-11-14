//
//  BabySettingViewController.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/14.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class BabySettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
