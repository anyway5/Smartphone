//
//  StockViewController.swift
//  NailStocks
//
//  Created by 王鹏宇 on 2022/3/1.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire

class StockViewController: UIViewController {

    @IBOutlet weak var lblStockMarketCap: UILabel!
    @IBOutlet weak var txtStockSymbol: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func getStockMarketCap(_ sender: Any) {
        guard let symbol = txtStockSymbol.text else { return}
        
        let url = "\(marketCapURL)\(symbol.uppercased())?apikey=\(apiKey)"
        print(url)
        
        
        SwiftSpinner.show("Getting Stock market cap for \(symbol)")
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide(nil)
            if response.error != nil{
                print(response.error!)
                return
            }
            
            let stocks = JSON(response.data!).array
            
            guard let stock = stocks!.first else { return;}
            
//            print(stock)
            
            let cap = MarketCap()
            cap.symbol = stock["symbol"].stringValue
            cap.date = stock["date"].stringValue
            cap.marketCap = stock["marketCap"].intValue
            
            self.lblStockMarketCap.text = "\(cap.symbol) : \(cap.marketCap) $"
        }
    }
    

}
