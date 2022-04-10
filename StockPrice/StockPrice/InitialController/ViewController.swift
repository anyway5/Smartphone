//
//  ViewController.swift
//  StockPrice
//
//  Created by 王鹏宇 on 2022/4/10.
//

import UIKit

class ViewController: UIViewController, SendStockDelegate {


    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblSymbol: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    @IBOutlet weak var lblDayHigh: UILabel!
    
    @IBOutlet weak var lblDayLow: UILabel!
    
    var stocksModel: [StockModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stocksModel = initializeCities()
    }

    func initializeCities() -> [StockModel]{
        let currentStock = StockModel("AAPL", "AAPL");
        let msft = StockModel("MSFT", "MSFT");
        let goog = StockModel("GOOG", "GOOG");
        let amzn = StockModel("AMZN", "AMZN" );
        let aapl = StockModel("AAPL", "AAPL");
        let fb = StockModel("FB", "FB");
        
        var modelArr = [StockModel]()
        
        modelArr.append(currentStock)
        modelArr.append(msft)
        modelArr.append(goog)
        modelArr.append(amzn)
        modelArr.append(aapl)
        modelArr.append(fb)
        
        return modelArr
        
    }
    
    func sendStockData(_ stockModel: StockModel) {
        lblName.text = stockModel.name
        lblSymbol.text = stockModel.symbol
        lblPrice.text = "\(stockModel.price)"
        lblDayLow.text = "\(stockModel.dayLow)"
        lblDayHigh.text = "\(stockModel.dayHigh)"
        
    }
    

}

