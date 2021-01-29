//
//  ViewController.swift
//  slidersColor
//
//  Created by Вадим on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstView: UIView!
    @IBOutlet var resultColorRedView: UIView!
    @IBOutlet var resultColorGreenView: UIView!
    @IBOutlet var resultColorBlueView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultColorRedView.layer.cornerRadius = 15
        resultColorGreenView.layer.cornerRadius = 15
        resultColorBlueView.layer.cornerRadius = 15
        firstView.layer.cornerRadius = 15

        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
        
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green

        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
        
        redValueLabel.text = String(sliderRed.value)
        greenColorLabel.text = String(sliderGreen.value)
        blueColorLabel.text = String(sliderBlue.value)

        resultColorRedView.backgroundColor = resultColorRedView.backgroundColor?.withAlphaComponent(0)
        resultColorBlueView.backgroundColor = resultColorBlueView.backgroundColor?.withAlphaComponent(0)
        resultColorGreenView.backgroundColor = resultColorGreenView.backgroundColor?.withAlphaComponent(0)
        
    }

    @IBAction func redSliderAction() {
        resultColorRedView.backgroundColor = .red
        redValueLabel.text = String(Double(round(100 * sliderRed.value)) / 100)
        
        let sliderValue = CGFloat(sliderRed.value)
        
        resultColorRedView.backgroundColor = resultColorRedView.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
    @IBAction func greenSliderAction() {
        resultColorGreenView.backgroundColor = .green
        greenColorLabel.text = String(Double(round(100 * sliderGreen.value)) / 100)
        
        let sliderValue = CGFloat(sliderGreen.value)
        
        resultColorGreenView.backgroundColor = resultColorGreenView.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
    @IBAction func blueSliderAction() {
        resultColorBlueView.backgroundColor = .blue
        blueColorLabel.text = String(Double(round(100 * sliderBlue.value)) / 100)
        
        let sliderValue = CGFloat(sliderBlue.value)
        
        resultColorBlueView.backgroundColor = resultColorBlueView.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
}

