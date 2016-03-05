//
//  mainViewController.swift
//  miniProj3
//
//  Created by Ali Shelton on 3/2/16.
//  Copyright © 2016 Christine Munar. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
    //objects in vc
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var outsidePic: UIImageView!
    @IBOutlet weak var arrowPic: UIImageView!
    @IBOutlet weak var housePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCustomButtonStyle(startButton)
        startButton.setTitleColor(UIColor(netHex: 0x317b52), forState: UIControlState.Normal)
        mainLabel.textColor = UIColor(netHex: 0x317b52)
        //arrowPic.setX(self.view.bounds.width/4)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        arrowPic.alpha = 0
        //arrowPic.setX(self.view.bounds.width/8)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1.75, delay: 0.25, options: [.CurveEaseInOut, .Repeat], animations:
            {self.arrowPic.setX(self.view.bounds.width*(2.7/5))
            self.arrowPic.alpha = 1
            }, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    private func setCustomButtonStyle(button : UIButton){
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor(netHex: 0x184a4a).CGColor
        button.layer.cornerRadius = 5.0
        button.layer.masksToBounds = true
        button.setTitleColor(UIColor(netHex: 0x184a4a), forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        button.setBackgroundImage(getImageWithColor(UIColor.orangeColor(), size: button.bounds.size), forState: UIControlState.Highlighted)
    }
    
    private func getImageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRectMake(0, 0, size.width, size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

}
