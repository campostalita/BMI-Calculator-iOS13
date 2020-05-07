//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by user167993 on 5/5/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculetdPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)//o self pode ser retirado
    }
    

}
