//
//  MainMarketTableVCell.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/23/20.
//

import UIKit

class MainMarketTableVCell: UITableViewCell {

    @IBOutlet weak var advertisingScrolView: UIScrollView!
    @IBOutlet weak var imageViewShop: UIImageView!
    @IBOutlet weak var shopName: UILabel!
    @IBOutlet weak var shopRating: UILabel!
    
    

    
    func updateViews(shop: Shop){
        shopName.text = "\(shop.name)"
        imageViewShop.image = UIImage.init(named: "\(shop.photo)")
        shopRating.text = "4.8 ⭐️"
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
