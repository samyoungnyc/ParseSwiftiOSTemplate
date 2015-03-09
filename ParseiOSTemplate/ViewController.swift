//
//  ViewController.swift
//  ParseiOSTemplate
//
//  Created by Computer on 3/9/15.
//  Copyright (c) 2015 Computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Below is a test of whether your integration went thru, feel free to delete this before or after initial testing
        
        var test = PFObject(className: "Test")
        test["success"] = "success"
        test.saveInBackgroundWithBlock { (success:Bool!, error: NSError!) -> Void in
            if error == nil {
                println("parse integration was a success")
            } else {
                println("parse was a fail")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

