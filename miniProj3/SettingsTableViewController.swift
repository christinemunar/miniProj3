//
//  SettingsTableViewController.swift
//  miniProj3
//
//  Created by Christine Munar on 2/29/16.
//  Copyright © 2016 Christine Munar. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SettingsTableViewController: UITableViewController {
    
    var mySearch = SearchModel()
    
    var settingNames = ["Restaurants", "Coffee Shops", "Movie Theatres"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tbc = tabBarController as! MainTabBarController
        mySearch = tbc.mySearch
        self.view.backgroundColor = UIColor(netHex: 0x577f7f)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingNames.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as! SettingsTableViewCell
        cell.cellLabel.text = settingNames[indexPath.row]
        cell.thisSearch = mySearch
        cell.cellLabel.textColor = UIColor.whiteColor()
        cell.cellSwitch.onTintColor = UIColor(netHex: 0x399494)
        cell.backgroundColor = UIColor(netHex: 0x577f7f)
        return cell
    }

}
