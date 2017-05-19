//
//  CustomCell.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/02/03.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
     @IBOutlet weak var rockImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
