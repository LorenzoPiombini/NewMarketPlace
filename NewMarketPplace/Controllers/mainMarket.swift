//
//  ViewController.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/19/20.
//

import UIKit


class mainMarket: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource{
    
    
   
    var shops = Array<Shop>()
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        NetworkService.shared.getShop { (shops) in
            self.shops = shops.items
            self.tableView.reloadData()
        } onError: { (Message) in
            debugPrint(Message)
            
        }

        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shops.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "showingDeal", for: indexPath) as? MainMarketTableVCell{
                    cell.updateViews(shop: shops[indexPath.row])
                    return cell
        }
        return MainMarketTableVCell()
    }
    
    
  
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableView {
            let shop = shops[indexPath.row]
            performSegue(withIdentifier: "bringMeToTheShop", sender: shop)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let shopVc = segue.destination as? ShopVC {
            shopVc.initShop(shop: sender as! Shop)
        }
    }
    
}


