//
//  BabySettingViewController.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/14.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class BabySettingViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSelect: UISegmentedControl!
    @IBOutlet weak var birthDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closeButtonClick(_ sender: Any) {
        if DBManager.shared.getCurrentBabyInfo() != nil {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func saveButtonClick(_ sender: Any) {
        if valdData().count > 0 {
            showError(_title: "", _message: valdData())
            return
        }
        if DBManager.shared.getCurrentBabyInfo() == nil {
            DBManager.shared.saveCurrentBabyInfo(_name: nameTextField.text ?? "" , _gender: genderSelect.selectedSegmentIndex , _birth: birthDate.date )
//            AppDelegate.shared.setTabbarToRootViewController()
        } else {
            DBManager.shared.saveCurrentBabyInfo(_name: nameTextField.text ?? "" , _gender: genderSelect.selectedSegmentIndex , _birth: birthDate.date )
//            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func valdData() -> String {
        var err = ""
        if nameTextField.text?.count == 0 {
            err = "Enter baby name!"
        }
        return err
    }
}
