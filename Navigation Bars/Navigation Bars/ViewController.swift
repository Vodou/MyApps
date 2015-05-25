//
//  ViewController.swift
//  Navigation Bars
//
//  Created by FritzDesktop on 5/12/15.
//  Copyright (c) 2015 GroupNonymous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0.00
    var isrunning = false
    
    func result()
    {
        count++
        
        var StrCount = String(format: "%.2f", count/100)
        lblTimer.text = "\(StrCount) Second(s)"
    }

    @IBOutlet var lblTimer: UILabel!
    
    @IBAction func btStop(sender: AnyObject) {
       timer.invalidate()
        
        isrunning = false
    }

    @IBAction func btStart(sender: AnyObject) {
        
        if (isrunning == false)
        {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1/100, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
            isrunning = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

