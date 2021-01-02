//
//  ViewController.swift
//  temperatureconverter
//
//  Created by Meet Pandya on 2020-12-28.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var appLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        appLabel.layer.cornerRadius = 5
        appLabel.layer.masksToBounds = true
        
        fahrenheitLabel.layer.cornerRadius = 8
        fahrenheitLabel.layer.masksToBounds = true
        
        celsiusLabel.layer.cornerRadius = 8
        celsiusLabel.layer.masksToBounds = true
    }


    @IBAction func tempSlider(_ sender: UISlider) {
        let sliderValue = Double(sender.value)
        let celsius = sliderValue.rounded()
        let fahrenheit = ((celsius*(1.8))+32).rounded()
        
        let tempC = Int(celsius)
        let tempF = Int(fahrenheit)
        
        fahrenheitLabel.text = String(tempF)
        celsiusLabel.text = String(tempC)
    }
    
}

