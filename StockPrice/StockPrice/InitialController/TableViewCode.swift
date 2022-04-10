//
//  TableViewCode.swift
//  StockPrice
//
//  Created by 王鹏宇 on 2022/4/10.
//

import UIKit
import Foundation

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let rows = stocksModel?.count else { return 0 }
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = Bundle.main.loadNibNamed("StockTableViewCell", owner: self, options: nil)?.first as! StockTableViewCell
        
        guard let stockModel = stocksModel?[indexPath.row] else {return cell}

        if indexPath.row == 0 {
            cell.lblSymbol.text = "Current Stock"
            
        }else {
            cell.lblSymbol.text = stockModel.key
            cell.lblName.text = stockModel.stock
        }
        
        cell.key = stockModel.key
        cell.stock = stockModel.stock
        cell.sendStockDelegate = self
        
        return cell
    }
}

