//
//  MakeCell.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/02/24.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

class MakeCell: UITableViewCell {
    
    @IBOutlet weak var mlabel1:UILabel!
    
    @IBOutlet weak var micon: UIImageView!
    
    @IBOutlet weak var mrock: UIImageView!
    
      @IBOutlet weak var mlabel2:UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
