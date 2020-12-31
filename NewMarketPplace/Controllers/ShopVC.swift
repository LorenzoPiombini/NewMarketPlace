//
//  ShopVC.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/26/20.
//

import UIKit

class ShopVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productCollectionView: UICollectionView!
    
    var margin = CGFloat(10.00)
    
    var shopTapped:Shop?
    func initShop(shop: Shop){
        shopTapped = shop
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(String(describing: shopTapped))")
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        
        guard let collectionView = productCollectionView, let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else {return}
        flowLayout.minimumInteritemSpacing = margin
        flowLayout.minimumLineSpacing = margin
        flowLayout.sectionInset = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin )
        // Do any additional setup after loading the view.
    }
    
   
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shopTapped!.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "showingProduct", for: indexPath) as? ProductCollectionVC {
            let product = shopTapped!.products[indexPath.row]
            cell.updateCell(with: product )
            
            return cell
        }
        return ProductCollectionVC()
    }
    
    
   func collectionView(_ collectionView: UICollectionView,
                          layout collectionViewLayout: UICollectionViewLayout,
                          sizeForItemAt indexPath: IndexPath) -> CGSize {
    let column = 2
    let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
    let totalSpace = (flowLayout?.sectionInset.left)! + (flowLayout?.sectionInset.right)! + (flowLayout!.minimumInteritemSpacing * CGFloat(column - 1))
    
    let size = (collectionView.bounds.width - totalSpace) / CGFloat(column)
    print("yes")
    return CGSize(width: size, height: size)
    
   }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
