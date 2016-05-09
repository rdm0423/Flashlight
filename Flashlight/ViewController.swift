//
//  ViewController.swift
//  Flashlight
//
//  Created by Caleb Hicks on 9/23/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    
    var isOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func lightButtonTapped(sender: AnyObject) {
        
        if isOn {
            self.isOn = false
            
            self.lightButton.setTitle("On", forState: .Normal)
            self.lightButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.view.backgroundColor = UIColor.blackColor()
            
        } else {
            self.isOn = true
            
            self.lightButton.setTitle("OFF", forState: .Normal)
            self.lightButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }
}

