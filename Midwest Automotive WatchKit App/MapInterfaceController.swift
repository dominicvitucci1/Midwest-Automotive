//
//  MapInterfaceController.swift
//  Midwest Automotive
//
//  Created by Dominic Vitucci on 4/30/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import WatchKit
import Foundation


class MapInterfaceController: WKInterfaceController {

    @IBOutlet weak var mapView: WKInterfaceMap!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        
        var location1 = CLLocationCoordinate2D(
            latitude: 42.033564,
            longitude: -87.893726
        )
        
        var span1 = MKCoordinateSpanMake(0.01, 0.01)
        var region1 = MKCoordinateRegion(center: location1, span: span1)
        
        mapView.setRegion(region1)
        
        var annotation1 = MKPointAnnotation()
        annotation1.coordinate = location1
        annotation1.title = "Midwest Automotive"
        annotation1.subtitle = "1065 Lee Street, Des Plaines, IL 60016"
        
        self.mapView.addAnnotation(annotation1.coordinate, withPinColor: WKInterfaceMapPinColor.Green)
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
        
//    func annotate() {
//            
//        let location = CLLocationCoordinate2D(latitude:42.033564, longitude: -87.893726)
//            
//            
//        var annotation1 = MKPointAnnotation()
//            annotation1.setCoordinate(location)
//            annotation1.title = "Midwest Automotive"
//            annotation1.subtitle = "1065 Lee Street, Des Plaines, IL 60016"
//            
//        mapView.addAnnotation(annotation1.coordinate, withPinColor: WKInterfaceMapPinColor.Green)
//            
//        }

}
