//
//  ParserProtocol.swift
//  FinalCryptoMVVM
//
//  Created by Alok Kumar Naik on 20/04/2021.
//

import Foundation

protocol ParserProtocol {
    
    func parse(comp: @escaping ([Coin])->())
}
