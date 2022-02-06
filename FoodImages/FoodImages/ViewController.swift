//
//  ViewController.swift
//  FoodImages
//
//  Created by 王鹏宇 on 2022/2/5.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let images = ["chicken","chips","ham","hamburger","hotdog","salads","salmon","sandwitch","sushi","tagliatelle"]
    let imageNames = ["chicken","chips","ham","hamburger","hotdog","salads","salmon","sandwitch","sushi","tagliatelle"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        cell.imgViewCell.image = UIImage(named:images[indexPath.row])
        cell.lblcell.text = imageNames[indexPath.row]
        return cell
    }
}

