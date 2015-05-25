//
//  ViewController.swift
//  Pop Over Test
//
//  Created by FritzDesktop on 5/24/15.
//  Copyright (c) 2015 GroupNonymous. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var myPickerView:UIPickerView = UIPickerView()
    var cityArray = [String]()
    
    
    @IBAction func selectView(sender: AnyObject) {
        let picker:UIPickerView = UIPickerView(frame: CGRectZero)
        picker.delegate = self
        picker.dataSource = self
        picker.showsSelectionIndicator = true
        myPickerView = picker
        var viewControl = UIViewController(nibName: nil, bundle: nil)
        
        var myView = UIView(frame: CGRectMake(0, 0, 500, 600))
        myView.addSubview(picker)
        viewControl.view = myView
        
       // var popoverContent = self.storyboard?.instantiateViewControllerWithIdentifier() as UIViewController
        //var pop2 = UIPopoverController(contentViewController: viewControl)
        var nav = UINavigationController(rootViewController: viewControl)
        nav.modalPresentationStyle = UIModalPresentationStyle.Popover
        //pop2.presentPopoverFromRect(countryButton.frame, inView: view, permittedArrowDirections: UIPopoverArrowDirection.Any, animated: true)
        
        
     //   var nav = UINavigationController(rootViewController: viewControl)
    //    nav.modalPresentationStyle = UIModalPresentationStyle.Popover
        var popover = nav.popoverPresentationController
      //  popoverContent.preferredContentSize = CGSizeMake(500, 600)
        let popRect = countryButton.frame
        let aPopover = UIPopoverController(contentViewController: viewControl)
        aPopover.presentPopoverFromRect(popRect, inView: view, permittedArrowDirections: UIPopoverArrowDirection.Any, animated: true)
        
        
        


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
    
    


}

