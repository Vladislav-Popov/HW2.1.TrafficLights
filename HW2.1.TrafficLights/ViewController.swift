//
//  ViewController.swift
//  HW2.1.TrafficLights
//
//  Created by Vladislav on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTrafficLightView: UIView!
    @IBOutlet weak var yellowTrafficLightView: UIView!
    @IBOutlet weak var greenTrafficLightView: UIView!
    
    @IBOutlet weak var toggleTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLightView.layer.cornerRadius = 60
        yellowTrafficLightView.layer.cornerRadius = 60
        greenTrafficLightView.layer.cornerRadius = 60
        toggleTextButton.layer.cornerRadius = 10
    }
    
    @IBAction func toggleTextButtonPressed() {
        if redTrafficLightView.alpha == 1 {
            yellowTrafficLightView.alpha = 1
            redTrafficLightView.alpha = 0.3
        } else if yellowTrafficLightView.alpha == 1 {
            yellowTrafficLightView.alpha = 0.3
            greenTrafficLightView.alpha = 1
        } else if greenTrafficLightView.alpha == 1 {
            greenTrafficLightView.alpha = 0.3
            redTrafficLightView.alpha = 1
        } else {
            redTrafficLightView.alpha = 1
            toggleTextButton.setTitle("NEXT", for: .normal)
        }
    }
}

