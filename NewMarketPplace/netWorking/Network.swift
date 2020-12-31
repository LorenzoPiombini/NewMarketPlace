//
//  Network.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/19/20.
//

import Foundation

class NetworkService {
    
    static let shared = NetworkService()
    
    let URL_BASE = "http://localhost:3003"
    let URL_SHOP = "/shop"
    let session = URLSession(configuration: .default)
    
    
    
    func getShop(onSuccess: @escaping (Shops)-> Void, onError: @escaping (String)-> Void){
        let url = URL(string: "\(URL_BASE)")!
        let task = session.dataTask(with: url) { (data, response, error) in
            
        
            
            DispatchQueue.main.async {
                if let error = error {
                    onError(error.localizedDescription)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse else{
                    debugPrint("invalid data or response !")
                    return}
                
                do{
                    if response.statusCode == 200 {
                        let items = try JSONDecoder().decode(Shops.self, from: data)
                        onSuccess(items)
                    }else {
                        let err = try JSONDecoder().decode(ApiErrors.self, from: data)
                        onError(err.message)
                    }
                    
                }
                
                catch{
                    onError(error.localizedDescription)
                }
            }
    }
        task.resume()
}

}
