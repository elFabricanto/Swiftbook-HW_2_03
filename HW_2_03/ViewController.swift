//
//  ViewController.swift
//  HW_2_03
//
//  Created by Даниил on 01.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - IB outlets
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redNumber: UILabel!
    @IBOutlet var greenNumber: UILabel!
    @IBOutlet var blueNumber: UILabel!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        redNumber.text = String(redSlider.value)
        greenNumber.text = String(greenSlider.value)
        blueNumber.text = String(blueSlider.value)
    }
    
    // MARK: - IB actions
    @IBAction func changeRedColor() {
        redNumber.text = String(format: "%.2f", redSlider.value)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.00)
    }
    @IBAction func changeGreenColor() {
        greenNumber.text = String(format: "%.2f", greenSlider.value)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.00)
    }
    @IBAction func changeBlueColor() {
        blueNumber.text = String(format: "%.2f", blueSlider.value)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.00)
    }
    
}
