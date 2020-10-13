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
        // Do any additional setup after loading the view.
    }

    @IBAction func toggleTextButtonPressed() {
        redTrafficLightView.alpha = 1
        toggleTextButton.setTitle("NEXT...", for: .normal)
    }
    
    
}

