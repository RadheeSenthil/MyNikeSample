//
//  ServiceLayer.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import Foundation


class ServiceLayer {
    
    //Read From Local File shopdata.json
    
    func loadShopJson() -> ShopDataModel? {
        
        let fileName = "shopdata"
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let shopJsonData = try decoder.decode(ShopDataModel.self, from: data)
                return shopJsonData
                
            } catch {
                print("Error : \(error)")
            }
        }
        
        return nil
    }
    
    
}
