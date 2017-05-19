//
//  TyatCell.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/02/17.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

class TyatCell: UITableViewCell {

    @IBOutlet weak var tlabel1:UILabel!
    
    @IBOutlet weak var tlabel2:UILabel!
    
    @IBOutlet weak var tlabel3:UILabel!
    
    @IBOutlet weak var ticon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
