//
//  ViewController.swift
//  HowManyFingers
//
//  Created by FritzDesktop on 5/10/15.
//  Copyright (c) 2015 GroupNonymous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var lblResult: UILabel!
    @IBOutlet var txtFingers: UITextField!
    @IBAction func btnGuess(sender: AnyObject) {
        
        var randomnumber = arc4random_uniform(11)
        
        var intFingers = txtFingers.text.toInt()
        if (intFingers != nil){
            if(intFingers == Int(randomnumber)){
                lblResult.textColor = UIColor.greenColor()
                lblResult.text = "Correct"
            } else {
                lblResult.textColor = UIColor.redColor()
                lblResult.text = "Wrong. Guess again"
            }
        } else {
            lblResult.textColor = UIColor.blackColor()
            lblResult.text = "Enter a number"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

