//
//  SettingsTableViewCell.swift
//  miniProj3
//
//  Created by Ali Shelton on 3/2/16.
//  Copyright © 2016 Christine Munar. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBAction func cellSwitch(sender: AnyObject) {
    }
    
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
