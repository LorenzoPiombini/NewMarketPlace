//
//  ProductListVC.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/30/20.
//

import UIKit

class ProductListVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
   
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        // Do any additional setup after loading the view.
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
