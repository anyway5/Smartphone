//
//  SecondViewController.swift
//  TwoViews
//
//  Created by 王鹏宇 on 2022/2/14.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    var welcomeStr = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text = welcomeStr

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
