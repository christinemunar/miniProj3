//
//  SearchModel.swift
//  miniProj3
//
//  Created by Christine Munar on 3/4/16.
//  Copyright © 2016 Christine Munar. All rights reserved.
//

import UIKit

class SearchModel: NSObject {
    
    var locationSearch:String = ""
    var settingsSearch:String = ""
    var restaurant:String = ""
    var coffee:String = ""
    var movie:String = ""
    
    func currentSearch() -> String{
        settingsSearch = restaurant + " " + coffee + " " + movie
        return settingsSearch + " near " + locationSearch
    }
    
}
