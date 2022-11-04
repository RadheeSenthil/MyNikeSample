//
//  TabViewWomen.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct TabViewWomen: View {
    
    @State var shopDataModel : ShopDataModel?
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            MustHavesView(mustHaves: shopDataModel?.musthaves ?? [])
            
            CategoriesView(categories: shopDataModel?.categories ?? [])
            
            NewArrivalsView(newArrivals: shopDataModel?.newarrivals ?? [])
            
        }
        .onAppear{
            shopDataModel = ServiceLayer().loadShopJson()
            print(shopDataModel?.newarrivals[0].title ?? "Error")
        }
    }
}

struct TabViewWomen_Previews: PreviewProvider {
    static var previews: some View {
        TabViewWomen()
    }
}
