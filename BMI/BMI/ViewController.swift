//
//  ViewController.swift
//  BMI
//
//  Created by 王鹏宇 on 2022/5/3.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var view2: UIView!
    
    
    @IBOutlet weak var view1: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
            case 0:
                view1.isHidden = false
                view2.isHidden = true
            case 1:
                view1.isHidden = true
                view2.isHidden = false
            default:
                break;
        }
    }
}

