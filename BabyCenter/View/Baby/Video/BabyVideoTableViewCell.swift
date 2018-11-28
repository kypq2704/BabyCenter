//
//  BabyVideoTableViewCell.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/28.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class BabyVideoTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thubnailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
