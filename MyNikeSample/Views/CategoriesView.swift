//
//  CategoriesView.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct CategoriesView: View {
    
    let categories : [Category]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ForEach(categories) { item in
                
                CategoryRowView(item: item)
            }
            
        }

    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        
        let shopDataModel = ServiceLayer().loadShopJson()
        
        CategoriesView(categories: shopDataModel?.categories ?? [])
    }
}

struct CategoryRowView: View {
    
    let item : Category
    
    var body: some View {
        
        HStack {
            Text(item.title)
              .CategoriesTitleFont()
            
            Spacer()
                       
            MyAsyncImage(imageURL: item.image, imageWidth: 80, imageHeight: 80, isRemote: false)
            
        }
        .padding()
        .background(
            Rectangle()
                .fill(Color(hex: 0xc4c4c4))
        )
        
        
    }
}
