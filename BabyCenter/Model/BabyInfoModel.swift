//
//  BabyInfoModel.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/15.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit
import RealmSwift

class BabyInfoModel: Object {
    @objc dynamic var name: String?
    @objc dynamic var gender: Int = 0
    @objc dynamic var birthDay: Date?
    
    func getHeightBaby() -> Double {
        let weekday = getNumOfWeekDay()
        switch weekday {
        case 0...3: return 0
        case 4: return 0.1
        case 5: return 0.3
        case 6: return 0.5
        case 7: return 0.63
        case 8: return 0.9
        case 9: return 1.22
        case 10: return 1.61
        case 11: return 2.13
        case 12: return 2.91
        case 13: return 3.42
        case 14: return 3.98
        case 15: return 4.57
        case 16: return 5.12
        case 17: return 5.59
        case 18: return 6.02
        case 19: return 10.08
        case 20: return 10.51
        case 21: return 10.94
        case 22: return 11.38
        case 23: return 11.81
        case 24: return 13.62
        case 25: return 14.02
        case 26: return 14.41
        case 27: return 14.8
        case 28: return 15.2
        case 29: return 15.71
        case 30: return 16.18
        case 31: return 16.69
        case 32: return 17.2
        case 33: return 17.72
        case 34: return 18.19
        case 35: return 18.66
        case 36: return 19.13
        case 37: return 19.61
        case 38: return 19.96
        case 39: return 20.16
        case 40: return 20.35
        default:
            return 20.47
        }
    }
    
    func getWeightBaby() -> Double {
        let weekday = getNumOfWeekDay()
        switch weekday {
        case 0...4: return 0
        case 5: return 0.2
        case 6: return 0.5
        case 7: return 1
        case 8: return 2
        case 9: return 4
        case 10: return 7
        case 11: return 14
        case 12: return 23
        case 13: return 43
        case 14: return 70
        case 15: return 100
        case 16: return 140
        case 17: return 190
        case 18: return 240
        case 19: return 300
        case 20: return 360
        case 21: return 430
        case 22: return 501
        case 23: return 600
        case 24: return 660
        case 25: return 760
        case 26: return 875
        case 27: return 1005
        case 28: return 1153
        case 29: return 1319
        case 30: return 1502
        case 31: return 1702
        case 32: return 1918
        case 33: return 2146
        case 34: return 2383
        case 35: return 2622
        case 36: return 2859
        case 37: return 3083
        case 38: return 3288
        case 39: return 4362
        case 40: return 3597
        default:
            return 3685
        }
    }

    
    func getNumOfWeekDay()-> Int {
        
        let dateRangeStart = Date()
        let components = Calendar.current.dateComponents([.weekOfYear, .month, .day], from: dateRangeStart, to: birthDay ?? Date())
//        print("difference is \(components.month ?? 0) months and \(components.weekOfYear ?? 0) weeks")
        if components.month ?? 00 > 0 {
            return 40-((components.weekOfYear ?? 0) + (components.month ?? 0)*4)
        } else {
            return 40-(components.weekOfYear ?? 0)
        }
    }
    
    func getDaysOfBirth()-> String{
        let dateRangeStart = Date()
        let components = Calendar.current.dateComponents([.weekOfYear, .month, .day], from: dateRangeStart, to: birthDay ?? Date())

        if components.day ?? 0 > 0 {
            return ("\(getNumOfWeekDay()) weeks \(components.day ?? 0) days")
        }
        return ("\(getNumOfWeekDay()) weeks")
    }
}
