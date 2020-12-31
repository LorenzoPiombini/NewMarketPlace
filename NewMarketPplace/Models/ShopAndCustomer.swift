//
//  File.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/19/20.
//

import Foundation


struct Shops:Codable {
    var items : Array<Shop>
}

struct Shop: Codable{
    var name:String
    var address:String
    var phoneNumber: String
    var photo:String
    var products:[Products]
    
}

struct User: Codable{
    var name: String
    var lastName: String
    var address: Address
    var phoneNumber: String
    var emailAddress: String
    var password: String
    
}

struct Address: Codable{
    var addressLine1: String
    var addressLine2: String
    var zipCode: String
    
}



