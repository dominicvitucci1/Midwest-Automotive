//
//  AboutViewController.swift
//  Midwest Automotive
//
//  Created by Dominic Vitucci on 4/17/15.
//  Copyright (c) 2015 Dominic Vitucci. All rights reserved.
//

import UIKit
import MapKit

class AboutViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        map.delegate = self
        
        let initialLocation = CLLocationCoordinate2D(
            latitude:42.033564,
            longitude: -87.893726
        )
        
        var span1 = MKCoordinateSpanMake(0.01, 0.01)
        var region1 = MKCoordinateRegion(center: initialLocation, span: span1)
        
        map.setRegion(region1, animated: true)
        
        
        annotate()

    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        NSLog("viewForannotation")
        if annotation is MKUserLocation {
            //return nil
            return nil
        }
        
        let reuseId = "pin"
        var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId) as? MKPinAnnotationView
        
        if pinView == nil {
            //println("Pinview was nil")
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView!.canShowCallout = true
            pinView!.animatesDrop = true
        }
        
        var button = UIButton.buttonWithType(UIButtonType.DetailDisclosure) as! UIButton // button with info sign in it
        
        pinView?.rightCalloutAccessoryView = button
        
        
        return pinView
    }
    
     func mapView(mapView: MKMapView!, annotationView view: MKAnnotationView!, calloutAccessoryControlTapped control: UIControl!) {
        
            
            var lat1 : NSString = "42.033564"
            var lng1 : NSString = "-87.893726"
            
            var latitute:CLLocationDegrees =  lat1.doubleValue
            var longitute:CLLocationDegrees =  lng1.doubleValue
            
            var coordinate = CLLocationCoordinate2DMake(latitute, longitute)
            
            var placemark : MKPlacemark = MKPlacemark(coordinate: coordinate, addressDictionary:nil)
            
            var mapItem:MKMapItem = MKMapItem(placemark: placemark)
            
            mapItem.name = "Midwest Automotive"
            
            let launchOptions:NSDictionary = NSDictionary(object: MKLaunchOptionsDirectionsModeDriving, forKey: MKLaunchOptionsDirectionsModeKey)
            
            var currentLocationMapItem:MKMapItem = MKMapItem.mapItemForCurrentLocation()
            
            MKMapItem.openMapsWithItems([currentLocationMapItem, mapItem], launchOptions: launchOptions as [NSObject : AnyObject])
        
    }
    
    
    
    func annotate() {
        
        let location = CLLocationCoordinate2D(
            latitude:42.033564,
            longitude: -87.893726
        )

        
        var annotation1 = MKPointAnnotation()
        annotation1.coordinate = location
        annotation1.title = "Midwest Automotive"
        annotation1.subtitle = "1065 Lee Street, Des Plaines, IL 60016"
        
        map.addAnnotation(annotation1)
        
    }
}
