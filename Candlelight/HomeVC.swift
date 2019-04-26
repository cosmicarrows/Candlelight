//
//  HomeVC.swift
//  Candlelight
//
//  Created by Laurence Wingo on 4/1/19.
//  Copyright © 2019 Cosmic Arrows, LLC. All rights reserved.
// New file is here

import UIKit
import MapKit
import RevealingSplashView

class HomeVC: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    @IBOutlet weak var actionButton: RoundedShadowButton!
    
    var delegate: CenterVCDelegate?
    
    let revealingSplashView = RevealingSplashView.init(iconImage: UIImage.init(named: "blueFlame")!, iconInitialSize: CGSize.init(width: 80, height: 80), backgroundColor: UIColor.white)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        self.view.addSubview(revealingSplashView)
        revealingSplashView.animationType = .popAndZoomOut
        revealingSplashView.startAnimation()
        
        revealingSplashView.heartAttack = true
    }

    @IBAction func actionButtonWasPressed(_ sender: Any) {
        actionButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    
    @IBAction func menuButtonPressed(_ sender: Any) {
        delegate?.toggleLeftPanel()
    }
}

