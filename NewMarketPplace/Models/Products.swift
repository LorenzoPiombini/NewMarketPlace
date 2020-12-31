//
//  Products.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/19/20.
//

import Foundation


protocol  Product {
    var id: Int { get }
    var description: String {get set}
    var price: String { get set }
    var photoName:String  { get set }
}


struct Products : Product, Codable {
    
    let id: Int
    var description: String
    var price: String
    var size: String
    var category: String
    var photoName: String
    var productinfo: [ProductInfo]
}
struct ProductInfo: Codable {
    var type: String // this is going to be like Jaket or t-shirt and stuff like that
    var typeDescription: String // somenthing about the product like the type of nek, wheather has sides pocket and such
    var productCode: String //it`ll be the same as product id
    var brand: String // description about the brand
    var sizeAndFit: String // info on the size
    var washingInfo: String
    var aboutMe: String // info regarding the selected products
}


