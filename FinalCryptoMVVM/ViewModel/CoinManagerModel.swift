//
//  CoinManagerModel.swift
//  FinalCryptoMVVM
//
//  Created by Alok Kumar Naik on 20/04/2021.
//

import Foundation

class CoinManagerModel {
    
    var messages:[Coin]?
    
    var itemsCount: Int{
        return messages?.count ?? 0
    }
    
    var parser: ParserProtocol
    
    init(parser: ParserProtocol = Parser()) {
        self.parser = parser
    }
    
    func getData() {
        
        parser.parse { (data) in
            let safeData = data
            self.messages = safeData
            print(self.messages)
        }
    }
}

