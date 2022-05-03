//
//  FirstViewController.swift
//  BMI
//
//  Created by 王鹏宇 on 2022/5/3.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var textWeight: UITextField!
    
    @IBOutlet weak var textFeet: UITextField!
    
    
    @IBOutlet weak var textInches: UITextField!
    
    
    @IBOutlet weak var lblBmi: UILabel!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func calBmi(_ sender: Any) {
        var alert = ""
        if textInches.text? .isEmpty ?? true {
            alert = "Inches is empty"
        }
        if textFeet.text? .isEmpty ?? true {
            alert = "Feet is empty"
        }
        if textWeight.text? .isEmpty ?? true {
            alert = "Weight is empty"
        }
        
        if !alert.isEmpty {
            lblBmi.text = alert
        } else{
            let input1 = textWeight.text ?? ""
            let input2 = textFeet.text ?? ""
            let input3 = textInches.text ?? ""
            let w = Double(input1) ?? -1
            let f = Double(input2) ?? -1
            let i = Double(input3) ?? -1
                        
            if(w <= 0 || f < 0 || i < 0 || f+i == 0){
                lblBmi.text = "Wrong input!"
            }else{
                let result = (w * 703)/(pow(f*12 + i, 2))
                
                if result < 18.5{
                    lblBmi.text = "You're underweight. BMI: \(String(format: "%.2f", result))"
                }else if result >= 18.5 && result < 24.9{
                    lblBmi.text = "You're healthy weight. BMI: \(String(format: "%.2f", result))"
                }else if result >= 25 && result < 29.9{
                    lblBmi.text = "You're overweight. BMI: \(String(format: "%.2f", result))"
                }else if result >= 30{
                    lblBmi.text = "You're obese. BMI: \(String(format: "%.2f", result))"
                }

            }

        }
    }
    

}
