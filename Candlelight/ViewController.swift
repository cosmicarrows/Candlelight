//
//  ViewController.swift
//  Candlelight
//
//  Created by Laurence Wingo on 4/1/19.
//  Copyright © 2019 Cosmic Arrows, LLC. All rights reserved.
// New file is here

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }


}

