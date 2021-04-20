//
//  Parser.swift
//  FinalCryptoMVVM
//
//  Created by Alok Kumar Naik on 20/04/2021.
//

import Foundation

class Parser: ParserProtocol {
    
    func parse(comp: @escaping ([Coin])->()){
    
        let api = URL(string: "https://api.coinranking.com/v1/public/coins")
        
        URLSession.shared.dataTask(with: api!) {data, response, error in
            
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            do{
            let result = try JSONDecoder().decode(CryptoDataContainer.self, from: data!)
                
                comp(result.data.coins)
            }
            catch{
                
            }
            
        }.resume()
    }
}
