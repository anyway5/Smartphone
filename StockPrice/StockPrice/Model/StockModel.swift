//
//  StockModel.swift
//  StockPrice
//
//  Created by 王鹏宇 on 2022/4/10.
//

import Foundation

class StockModel{
    init(_ stock : String, _ Key : String){
        self.stock = stock
        self.key = Key
    }
    var name = ""
    var symbol = ""
    var price : Float = 0.0
    var dayLow : Float = 0.0
    var dayHigh : Float = 0.0
    
    var stock = ""
    var key = ""
}
