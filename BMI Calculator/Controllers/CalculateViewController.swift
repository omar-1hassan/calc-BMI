//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var hightScore: UILabel!
    @IBOutlet weak var hightLab: UILabel!
    
    @IBOutlet weak var weightLab: UILabel!
    
    @IBOutlet weak var weightScore: UILabel!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var hightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hightChange(_ sender: UISlider) {
        
        let hight = String( format : "%.2f" , sender.value)
        hightScore.text = "\(hight)m"
    }
    
    
    @IBAction func weightChange(_ sender: UISlider) {
        
       // let weightScorre =
      let weight = String( format : "%.0f" , sender.value)
        weightScore.text = "\(weight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let high = hightSlider.value
        let weghitt = weightSlider.value
        
        let BMI = weghitt / pow(high, 2)
        print(BMI)
    }
}

