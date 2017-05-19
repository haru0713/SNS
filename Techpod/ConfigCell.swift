//
//  ConfigCell.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/02/24.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

class ConfigCell: UITableViewCell {
    
    @IBOutlet weak var clabel1:UILabel!
    
     @IBOutlet weak var clabel2:UILabel!
    
    @IBOutlet weak var cicon: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
