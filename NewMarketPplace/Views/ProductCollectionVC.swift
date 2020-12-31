//
//  ProductCollectionVC.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/30/20.
//

import UIKit

class ProductCollectionVC: UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel:UILabel!
    @IBOutlet weak var picture: UIImageView!
    
    func updateCell(with: Products){
        picture.image = UIImage.init(named: with.photoName)
        priceLabel.text = "\(with.price)"
        descriptionLabel.text = "\(with.description)"
        
    }
    
    
}
