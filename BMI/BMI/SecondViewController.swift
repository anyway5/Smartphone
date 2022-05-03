//
//  SecondViewController.swift
//  BMI
//
//  Created by 王鹏宇 on 2022/5/3.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var textWeight: UITextField!
    
    @IBOutlet weak var textHeight: UITextField!
    
   
    @IBOutlet weak var lblBmi: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calBmi(_ sender: Any) {
        var alert = ""
        if textHeight.text? .isEmpty ?? true {
            alert = "Height is empty"
        }
        if textWeight.text? .isEmpty ?? true {
            alert = "Weight is empty"
        }
        
        if !alert.isEmpty {
            lblBmi.text = alert
        } else{
            let input1 = textWeight.text ?? ""
            let input2 = textHeight.text ?? ""

            let w = Double(input1) ?? -1
            let h = Double(input2) ?? -1
                        
            if(w <= 0 || h <= 0 ){
                lblBmi.text = "Wrong input!"
            }else{
                let result = (w)/(pow(h/100, 2))
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
