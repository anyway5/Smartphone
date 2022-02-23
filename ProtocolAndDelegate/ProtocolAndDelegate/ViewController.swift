//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by 王鹏宇 on 2022/2/21.
//

import UIKit

class ViewController: UIViewController, SendFirstAndLastNameDelegate {

    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getNameFromUser(_ sender: Any) {
        performSegue(withIdentifier: "segueGetName", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueGetName"{
            let getNameVC = segue.destination as! GetNameViewController
            guard let firstName = lblFirstName.text else{return}
            guard let lastName = lblLastName.text else{return}
            getNameVC.firstName = firstName
            getNameVC.lastName = lastName
            
            getNameVC.sendFirstAndLastNameDelegate = self
        }
    }
    
    
    func setFirstAndLastName(firstNmae: String, lastName: String) {
        lblFirstName.text = firstNmae
        lblLastName.text = lastName
    }
    
    
    func setWelcomeText(welcomeText: String) {
        lblWelcome.text = welcomeText
    }
    
}

