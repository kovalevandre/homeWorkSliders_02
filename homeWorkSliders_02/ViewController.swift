//
//  ViewController.swift
//  homeWorkSliders_02
//
//  Created by Andrey Kovalev on 01.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateColor()
    }
    
    func updateColor() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        redLabel.text = String(format: "%.2f", redValue)
        greenLabel.text = String(format: "%.2f", greenValue)
        blueLabel.text = String(format: "%.2f", blueValue)
        
        redSlider.minimumTrackTintColor = UIColor(red: 0, green: greenValue, blue: blueValue, alpha: 1.0)
        greenSlider.minimumTrackTintColor = UIColor(red: redValue, green: 0, blue: blueValue, alpha: 1.0)
        blueSlider.minimumTrackTintColor = UIColor(red: redValue, green: greenValue, blue: 0, alpha: 1.0)
    }
}
