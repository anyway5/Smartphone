//
//  ProtocolSendStockData.swift
//  StockPrice
//
//  Created by 王鹏宇 on 2022/4/10.
//

import Foundation

protocol SendStockDelegate {
    func sendStockData(_ stockModel : StockModel)
}
