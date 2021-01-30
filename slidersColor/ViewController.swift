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
        
        firstView.layer.cornerRadius = 15
        
        viewViewDidLoad(for: resultColorRedView)
        viewViewDidLoad(for: resultColorGreenView)
        viewViewDidLoad(for: resultColorBlueView)
        
        sliderViewDidLoad(for: sliderRed, color: .red)
        sliderViewDidLoad(for: sliderGreen, color: .green)
        sliderViewDidLoad(for: sliderBlue, color: .blue)
        
        textViewDidLoad(for: redValueLabel)
        textViewDidLoad(for: greenColorLabel)
        textViewDidLoad(for: blueColorLabel)
    }
    
    @IBAction func redSliderAction() {
        sliderAction(
            for: redValueLabel,
            for: sliderRed,
            and: resultColorRedView,
            color: .red
        )
    }
    
    @IBAction func greenSliderAction() {
        sliderAction(
            for: greenColorLabel,
            for: sliderGreen,
            and: resultColorGreenView,
            color: .green
        )
    }
    
    @IBAction func blueSliderAction() {
        sliderAction(
            for: blueColorLabel,
            for: sliderBlue,
            and: resultColorBlueView,
            color: .blue)
    }
    
    private func sliderViewDidLoad(for slider: UISlider, color: UIColor) {
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = color
    }
    
    private func viewViewDidLoad(for view: UIView) {
        view.layer.cornerRadius = 15
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(0)
    }
    
    private func textViewDidLoad(for textView: UILabel) {
        textView.text = String(sliderRed.value)
    }
    
    private func sliderAction(
        for label: UILabel,
        for slider: UISlider,
        and view: UIView,
        color: UIColor
    ) {
        view.backgroundColor = color
        
        label.text = String(Double(round(100 * slider.value)) / 100)
        
        let sliderValue = CGFloat(slider.value)
        
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
}
