//
//  ViewController.swift
//  TConverter
//
//  Created by Gold_Mock on 22.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fehrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempC = Int(round(sender.value))
        celsiusLabel.text = "\(tempC)ºC"
        
        let tempF = Int(round((sender.value * 9 / 5) + 32))
        fehrenheitLabel.text = "\(tempF)ºF"
    }
    
}

