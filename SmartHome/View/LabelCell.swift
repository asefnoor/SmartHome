//
//  LabelCell.swift
//  SmartHome
//
//  Created by Asif on 2019-07-05.
//  Copyright © 2019 Asif. All rights reserved.
//

import UIKit

class LabelCell: UITableViewCell {

    @IBOutlet weak var usageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.usageLabel.textColor = Utils.hexStringToUIColor(hex: "#7D858B")
        self.usageLabel.font = UIFont(name: "Sk-Modernist-Bold", size: 20)
        
        selectionStyle = .none
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
