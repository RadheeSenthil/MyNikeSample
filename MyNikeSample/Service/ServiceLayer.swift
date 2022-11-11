//
//  ServiceLayer.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import Foundation


class ServiceLayer {
    
    let shopDataEndPoint = "https://raw.githubusercontent.com/RadheeSenthil/MyJSONServer/main/mynikesample/data/shopdata.json"
    
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
    
    
    func getShopData() async throws -> ShopDataModel? {
        
        var shopdata : ShopDataModel?
        
        guard let url = URL(string: shopDataEndPoint)
        else
        {
            return nil
        }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let httpResponse = response as? HTTPURLResponse
        else
        {
            return nil
        }
        
        if ( httpResponse.statusCode == 200 ) {
            do {
                let decoder = JSONDecoder()
                shopdata = try decoder.decode(ShopDataModel.self, from: data)
                return shopdata
            }
            catch
            {
                print("Error : \(error)")
            }
        }
        else
        {
            return nil
        }
        
        return shopdata
        
    }
    
}
