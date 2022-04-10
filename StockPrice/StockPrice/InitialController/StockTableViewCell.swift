//
//  StockTableViewCell.swift
//  StockPrice
//
//  Created by 王鹏宇 on 2022/4/10.
//

import UIKit

class StockTableViewCell: UITableViewCell {
    var key = ""
    var stock = ""
    
    @IBOutlet weak var lblSymbol: UILabel!
    @IBOutlet weak var lblName: UILabel!
    var sendStockDelegate : SendStockDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func getPriceAction(_ sender: Any) {
        let currentURL = getStockURL(key)
        
        getStock(currentURL).done { stockModel in
            stockModel.stock = self.stock
            self.sendStockDelegate?.sendStockData(stockModel)
            
        }
        .catch { error in
            print(error.localizedDescription)
        }
        
    }
}
