//
//  TodayViewController.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/14.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class TodayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showChildSettingView(_ sender: Any) {
        let today = UIStoryboard(name: "Today", bundle: nil)
        let todayVC = today.instantiateViewController(withIdentifier: "BabySettingViewController")
        self.present(todayVC, animated: true, completion: nil)
    }
    
    @IBAction func showImageView(_ sender: Any) {
        
    }
    @IBAction func showTimeLineView(_ sender: Any) {
    
    }
}
