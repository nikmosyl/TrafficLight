//
//  ViewController.swift
//  TrafficLight
//
//  Created by nikita on 06.11.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        trafficLightButton.layer.cornerRadius = 10
    }
    
    override func viewDidAppear(_ animated: Bool) {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }
    
    @IBAction func trafficLightDidTapped() {
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            trafficLightButton.setTitle("Next", for: .normal)
        }
    }
    


}
