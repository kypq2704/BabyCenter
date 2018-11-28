//
//  TodayViewController.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/14.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class TodayViewController: UIViewController {
    
    @IBOutlet weak var duSinhTextField: UITextField!
    @IBOutlet weak var nameBabyLabel: UILabel!
    @IBOutlet weak var heightBabyLabel: UILabel!
    @IBOutlet weak var weightBabyLabel: UILabel!
    @IBOutlet weak var dateProgress: UIProgressView!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let babyInfo = DBManager.shared.getCurrentBabyInfo(){
            setBabyInfo(info: babyInfo)
        }
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
    
    func setBabyInfo(info: BabyInfoModel){
        duSinhTextField.text = info.birthDay?.toString(dateFormat: "MM/dd/yyyy")
        nameBabyLabel.text = info.name
        heightBabyLabel.text = "\(info.getHeightBaby()) inches"
        weightBabyLabel.text = "\(info.getWeightBaby()) grams"
        dateProgress.setProgress(Float(info.getNumOfWeekDay())/40, animated: true)
        dateLabel.text = info.getDaysOfBirth()
    }
}
