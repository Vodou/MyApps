//
//  ViewController.swift
//  Pop Over Test
//
//  Created by FritzDesktop on 5/24/15.
//  Copyright (c) 2015 GroupNonymous. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UIPopoverPresentationControllerDelegate {
    
    var myPickerView:UIPickerView = UIPickerView()
    var cityArray = [String]()
    
    
    @IBAction func selectView(sender: AnyObject) {
        //let picker:UIPickerView = UIPickerView(frame: CGRectMake(countryButton.frame.origin.x, countryButton.frame.origin.y, 250,300))
        
        var viewControl = UIViewController(nibName: nil, bundle: nil)
        var myView = UIView(frame: CGRectMake(0, 0, 250, 300))
        //myView.backgroundColor = UIColor.clearColor()
        viewControl.view = myView
        
        let picker:UIPickerView = UIPickerView(frame: CGRectInset(myView.frame, 10, 10))
        picker.delegate = self
        picker.dataSource = self
        picker.showsSelectionIndicator = true
        myPickerView = picker
        
        myView.addSubview(picker)

        if(UIDevice.currentDevice().userInterfaceIdiom == .Pad)
        {
        
        
        let popRect = countryButton.frame
        let aPopover = UIPopoverController(contentViewController: viewControl)
        aPopover.setPopoverContentSize(CGSizeMake(250, 300), animated: true)
        aPopover.presentPopoverFromRect(popRect, inView: view, permittedArrowDirections: UIPopoverArrowDirection.Any, animated: true)
        }
        else if(UIDevice.currentDevice().userInterfaceIdiom == .Phone)
        {
            
            viewControl.preferredContentSize = CGSizeMake(200, 300)
            viewControl.modalPresentationStyle = UIModalPresentationStyle.Popover
            var popover = viewControl.popoverPresentationController! as UIPopoverPresentationController
            popover.delegate = self
            popover.sourceView = self.view
            popover.sourceRect = countryButton.frame
            
            
            self.presentViewController(viewControl, animated: true, completion: nil)
            
            
        }


        
    }

    @IBOutlet var countryButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityArray = ["London", "Paris", "Tokyo", "Chicago", "Bussels"]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func  pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        println(cityArray[row])
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return cityArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cityArray.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
    


}

