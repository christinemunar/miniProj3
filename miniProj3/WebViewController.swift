//
//  WebViewController.swift
//  miniProj3
//
//  Created by Christine Munar on 2/29/16.
//  Copyright © 2016 Christine Munar. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var fullSearch:String = ""

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = fullSearch.stringByReplacingOccurrencesOfString(" ", withString: "+", options: NSStringCompareOptions.LiteralSearch, range: nil)
        let url = NSURL(string: "https://www.google.com/search?q=\(urlString)")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
