//
//  SettingsTableViewCell.swift
//  miniProj3
//
//  Created by Ali Shelton on 3/2/16.
//  Copyright © 2016 Christine Munar. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    var thisSearch:SearchModel!

    @IBAction func cellSwitch(sender: UISwitch) {
        if sender.on {
            if (cellLabel.text == "Restaurants") {
                thisSearch.restaurant = "Restaurants"
                
            } else if (cellLabel.text == "Coffee Shops") {
                thisSearch.coffee = "Coffee Shops"
                
            } else if (cellLabel.text == "Movie Theatres") {
                thisSearch.movie = "Movie Theatres"
            }
        } else {
            if (cellLabel.text == "Restaurants") {
                thisSearch.restaurant = ""
                
            } else if (cellLabel.text == "Coffee Shops") {
                thisSearch.coffee = ""
                
            } else if (cellLabel.text == "Movie Theatres") {
                thisSearch.movie = ""
            }
        }
    }
    
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
