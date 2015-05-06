//
//  GlanceInterfaceController.swift
//  Midwest Automotive
//
//  Created by Dominic Vitucci on 5/3/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import UIKit
import WatchKit
import Foundation


class GlanceInterfaceController: WKInterfaceController {

    @IBOutlet weak var statusImage: WKInterfaceImage!
    
    
    let userCal = NSCalendar.currentCalendar()
    let weekEndOpenComp = NSDateComponents()
    let weekEndCloseComp = NSDateComponents()
    let weekOpenComp = NSDateComponents()
    let weekCloseComp = NSDateComponents()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitDay, fromDate: date)
        let hour = components.hour
        let day = components.weekday
        
        weekEndOpenComp.weekday = 7
        weekEndOpenComp.hour = 8
        weekEndCloseComp.hour = 15
        
        weekOpenComp.weekday = 2
        weekOpenComp.hour = 8
        weekCloseComp.weekday = 6
        weekCloseComp.hour = 18
        
        statusImage.setImageNamed("Closed")
        
        
        
        
        if day == weekEndOpenComp.weekday {
            if hour >= weekEndOpenComp.hour && hour <= weekEndCloseComp.hour
            {
            
            statusImage.setImageNamed("Open")

            
            }}
        else if day >= weekOpenComp.weekday || day <= weekCloseComp.weekday {
            if hour >= weekOpenComp.hour && hour <= weekCloseComp.hour{
            
            statusImage.setImageNamed("Open")
            
        
            }}
        
        
        }
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
