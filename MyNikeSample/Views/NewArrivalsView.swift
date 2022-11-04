//
//  NewArrivalsView.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct NewArrivalsView: View {
    
    let newArrivals : [NewArrival]
    
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        VStack {
            
            HeadingLine(title: "New Arrivals")
                .padding(.horizontal)
            
            LazyVGrid(columns: columns) {
                
                ForEach(newArrivals) {item in
                    
                    VStack(alignment: .leading) {
                        MyAsyncImage(imageURL: item.image, imageWidth: 100, imageHeight: 100, isRemote: true)
                        
                        Text(item.title)
                            .NewArrivalsTitleFont()
                        
                        Text("$ " + item.price)
                            .NewArrivalsPriceFont()
                            .padding(.vertical, 1)
                    }
                }
            }
            
            ViewAllButton()
        }
        
    }
}

struct NewArrivalsView_Previews: PreviewProvider {
    static var previews: some View {
        
        let shopDataModel = ServiceLayer().loadShopJson()
        
        NewArrivalsView(newArrivals: shopDataModel?.newarrivals ?? [])
    }
}
