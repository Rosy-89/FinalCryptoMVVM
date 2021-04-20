//
//  CoinModel.swift
//  FinalCryptoMVVM
//
//  Created by Alok Kumar Naik on 20/04/2021.
//

import Foundation

struct CryptoDataContainer: Decodable {
    
    let status: String
    let data: CryptoData
}

struct CryptoData: Decodable {
    
    let coins: [Coin]
}

struct Coin: Decodable {
    
    let name: String
    let price: String
}
