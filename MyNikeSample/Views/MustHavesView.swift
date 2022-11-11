//
//  MustHavesView.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct MustHavesView: View {
    
    let mustHaves : [MustHave]
    
    var body: some View {
        
        VStack {
            
            HeadingLine(title: "Must-Haves, Best Sellers & More")
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    ForEach(mustHaves) {item in
                        MustHavesRowView(item: item)
                    }
                }
            }
        }
        .padding()
    }
}

struct MustHavesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let shopDataModel = ServiceLayer().loadShopJson()
        
        //let shopDataModel = ServiceLayer().getShopData()

        
        MustHavesView(mustHaves: shopDataModel?.musthaves ?? [])
    }
}

struct MustHavesRowView: View {
    
    let item : MustHave
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                
                MyAsyncImage(imageURL: item.image, imageWidth: 200, imageHeight: 200, isRemote: true)
                
                Text(item.title)
                    .NewArrivalsTitleFont()
            }
        }
        
    }
}
