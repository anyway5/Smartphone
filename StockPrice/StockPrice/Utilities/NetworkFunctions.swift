//
//  NetworkFunctions.swift
//  StockPrice
//
//  Created by 王鹏宇 on 2022/4/10.
//

import Foundation

import PromiseKit
import Alamofire
import SwiftyJSON

func getStockURL(_ symbol : String) -> String{
    let url = urlShortQuote + symbol + "?apikey=" + apiKey
    return url
}

func getStock(_ url : String) -> Promise<StockModel>{
    
    return Promise<StockModel> { seal -> Void in
        
        AF.request(url).responseJSON { response in
        
            if response.error != nil {
                seal.reject(response.error!)
            }
            
            let stockModel = StockModel("", "")
            //get data here

            let stocks = JSON(response.data!).arrayValue

            
            guard let stock = stocks.first else {return seal.fulfill(stockModel)}
            
            stockModel.name = stock["name"].stringValue
            stockModel.symbol = stock["symbol"].stringValue
            stockModel.price = stock["price"].floatValue
            stockModel.dayLow = stock["dayLow"].floatValue
            stockModel.dayHigh = stock["dayHigh"].floatValue
           
            seal.fulfill(stockModel)
            
        }// end of response

    }// end is return Promise
}// end of function


