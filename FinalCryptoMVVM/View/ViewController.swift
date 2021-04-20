//
//  ViewController.swift
//  FinalCryptoMVVM
//
//  Created by Alok Kumar Naik on 20/04/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableCoins: UITableView!
    var coinManagerModel = CoinManagerModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableCoins.delegate = self
        tableCoins.dataSource = self
        
        coinManagerModel.getData()
        tableCoins.reloadData()
//        DispatchQueue.main.async {
//            self.tableCoins.reloadData()
//        }
    }
    func format(price: String) -> String {
    
                let double = Double(price)
                let price = String(format: "$%.02f", double!)
                return price
    }
}
//MARK:- TableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("\(coinManagerModel.itemsCount)")
        return coinManagerModel.itemsCount
    }
}
//MARK:- TableViewDelegate

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "coincell",for: indexPath)
        let myIndex = indexPath.row
        if let myMessages = coinManagerModel.messages{
            cell.textLabel?.text = myMessages[myIndex].name
                 cell.detailTextLabel?.text = myMessages[myIndex].price
//            let formattedPrice = format(price: myMessages[myIndex].price)
//            cell.detailTextLabel?.text = formattedPrice
        }
        return cell
    }
}



