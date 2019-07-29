//
//  ButtonCell.swift
//  SmartHome
//
//  Created by Asif on 2019-07-05.
//  Copyright © 2019 Asif. All rights reserved.
//

import UIKit


class ButtonCell: UITableViewCell {

    
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var timeIntervalLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.actionLabel.textColor = App.Color.grey
        self.actionLabel.font = UIFont.appHeavyFontWith(size: 20)
        self.timeIntervalLabel.textColor = App.Color.grey
        self.timeIntervalLabel.font = UIFont.appRegularFontWith(size: 20)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
