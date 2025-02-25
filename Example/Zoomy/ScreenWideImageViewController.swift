//
//  ViewController.swift
//  Zoomy
//
//  Created by Menno Lovink on 04/09/2018.
//  Copyright (c) 2018 Menno Lovink. All rights reserved.
//

import UIKit
import Zoomy

class ScreenWideImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addZoombehavior(for: imageView, settings: Settings().with(actionOnTapOverlay: Action.dismissOverlay))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        imageZoomControllers.values.forEach{ $0.dismissOverlay() }
    }
}

//MARK: - ZoomDelegate
extension ScreenWideImageViewController: Zoomy.Delegate {
    
    func didBeginPresentingOverlay(for imageView: UIImageView) {
//        print("did begin presenting overlay for imageView: \(imageView)")
    }
    
    func didEndPresentingOverlay(for imageView: UIImageView) {
//        print("did end presenting overlay for imageView: \(imageView)")
    }
    
    func contentStateDidChange(from fromState: ImageZoomControllerContentState, to toState: ImageZoomControllerContentState) {
//        print("contentState did change from state: \(fromState) to state: \(toState)")
        //You might want to show/hide statusbar here
    }
}
