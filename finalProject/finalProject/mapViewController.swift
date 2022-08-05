//
//  mapViewController.swift
//  finalProject
//
//  Created by scholar on 8/4/22.
//

import UIKit
import MapKit
import CoreLocation

class mapViewController: UIViewController, MKMapViewDelegate {
    
    let map = MKMapView()
    
    let coordinate = CLLocationCoordinate2D(
        latitude: 45.419636,
        longitude: -84.983956
    )
    let coordinate2 = CLLocationCoordinate2D(
        latitude: 42.581728,
        longitude: -83.361734
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(map)
        map.frame = view.bounds // comment this, nav bar shows up without annots
        
        map.setRegion(MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.1,
                                   longitudeDelta: 0.1)),
                      animated: false)
        
        map.delegate = self
        
        addCustomPin()
    }
    
   
    
    private func addCustomPin() {
       
        
        let pin = CustomPointAnnotation()
        pin.coordinate = coordinate
        pin.title = "Harbor Point"
        pin.subtitle = "fan favorite sunset location"
        pin.imageName = "harborSprings"
        map.addAnnotation(pin)
        
        let pin2 = CustomPointAnnotation()
        pin2.coordinate = coordinate2
        pin2.title = "Orchard Lake"
        pin2.subtitle = "local fan favorite"
        pin2.imageName = "orchardLake"
        map.addAnnotation(pin2)
    }
    
    
    // Map
  
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else {
            return nil
        }
        
        var annotationView = map.dequeueReusableAnnotationView(withIdentifier: "custom")
        
    
        if annotationView == nil {
            // Create the view
            annotationView = MKAnnotationView(annotation: annotation,
                                              reuseIdentifier: "custom")
            annotationView?.canShowCallout = true
            annotationView?.rightCalloutAccessoryView
        }
        else {
            annotationView?.annotation = annotation
        }
        
        
        let cpa = annotation as! CustomPointAnnotation
        annotationView?.image = UIImage(named: cpa.imageName)
        
      
        
        
        return annotationView
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
