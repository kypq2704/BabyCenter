//
//  BabyItemModel.swift
//  BabyCenter
//
//  Created by Ky Rieu on 11/14/18.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class BabyItemModel: NSObject {
    var name : String?
    var image : String?
    
    init(n: String , i: String) {
        self.name = n
        self.image = i
    }
}
