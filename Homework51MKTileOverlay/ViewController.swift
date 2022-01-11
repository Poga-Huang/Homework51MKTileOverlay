//
//  ViewController.swift
//  Homework51MKTileOverlay
//
//  Created by 黃柏嘉 on 2022/1/11.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let template = "http://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png"
        let overlay = MKTileOverlay(urlTemplate: template)
        overlay.canReplaceMapContent = true
        mapView.addOverlay(overlay, level: .aboveLabels)
        mapView.delegate = self
    }

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKTileOverlay{
            return MKTileOverlayRenderer(overlay: overlay)
        }else{
            return MKTileOverlayRenderer()
        }
    }

}

