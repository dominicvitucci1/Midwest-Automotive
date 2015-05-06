//
//  ViewController.swift
//  Midwest Automotive
//
//  Created by Dominic Vitucci on 4/15/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "autoSales" {
            
            if let destinationVC = segue.destinationViewController as? WebViewController
            {
                destinationVC.urlPath = "http://m.cars.com/for-sale/index.html#searchresults?stkTyp=U&rn=0&rpp=10&zc=60016&dlId=499400&searchSource=DEALER_ADVANCED" as String
            }
            
            
            
        }
        
        else if segue.identifier == "coupons" {
            
            if let destinationVC = segue.destinationViewController as? WebViewController
            {
                destinationVC.urlPath = "http://www.midwestautomotiveinc.com/contentPages/couponBW.gif" as String
            }
            
            
        }
   
        
   }
    
    
    @IBAction func callNumber(sender: UIButton)
    {
        // Code for UIAlertView (ios7)
        
        var callUsAlert: UIAlertView = UIAlertView()
        
        callUsAlert.delegate = self
        
        callUsAlert.title = "Would you like to call our towing partners?"
        callUsAlert.message = ""
        callUsAlert.addButtonWithTitle("Cancel")
        callUsAlert.addButtonWithTitle("Call")
        
        callUsAlert.show()
        
    }
    
    // Code for UIAlertView (iOS 7)
    func alertView(View: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        
        switch buttonIndex {
            
        case 1:
            self.phoneCall()
            NSLog("calling")
            
        default:
            println("alertView \(buttonIndex) clicked")
            
            
        }
        
        
    }
    
    func phoneCall()
    {
        let phone = "tel://8476993077";
        let url:NSURL = NSURL(string:phone)!;
        UIApplication.sharedApplication().openURL(url);
    }
    
    
    @IBAction func callShop(sender: UIButton)
    {
        // Code for UIAlertView (ios7)
        
        var callUsAlert: UIAlertView = UIAlertView()
        
        callUsAlert.delegate = self
        
        callUsAlert.title = "Would you like to call our shop?"
        callUsAlert.message = ""
        callUsAlert.addButtonWithTitle("Cancel")
        callUsAlert.addButtonWithTitle("Call")
        
        callUsAlert.show()
        
    }
    
    // Code for UIAlertView (iOS 7)
    func callAlertView(View: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        
        switch buttonIndex {
            
        case 1:
            self.phoneCall()
            NSLog("calling")
            
        default:
            println("alertView \(buttonIndex) clicked")
            
            
        }
        
        
    }
    
    func shopPhoneCall()
    {
        let phone = "tel://8478278400";
        let url:NSURL = NSURL(string:phone)!;
        UIApplication.sharedApplication().openURL(url);
    }





}

