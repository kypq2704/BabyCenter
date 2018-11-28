//
//  DBManager.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/15.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import RealmSwift
import Foundation



class DBManager: NSObject {
    static var shared = DBManager()
    let realm = try! Realm()
    
    override init() {
        super.init()
    }
    
    private func addObject(_ object: Object) {
        do {
            try realm.write {
                realm.add(object)
            }
        } catch _ {}
    }
    
    func saveCurrentBabyInfo (_name: String, _gender: Int, _birth: Date){
        if let object = realm.objects(BabyInfoModel.self).first {
            
            try! realm.write {
                object.name = _name
                object.gender = _gender
                object.birthDay = _birth
            }
        } else {
            let baby = BabyInfoModel()
            baby.name = _name
            baby.gender = _gender
            baby.birthDay = _birth
            addObject(baby)
        }
    }
    func getCurrentBabyInfo() -> BabyInfoModel? {
        return realm.objects(BabyInfoModel.self).first ?? nil
    }
}
