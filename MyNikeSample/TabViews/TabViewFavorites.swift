//
//  TabViewFavorites.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct TabViewFavorites: View {
    var body: some View {
        
        VStack(spacing:10) {
            Spacer()
            Image(systemName: "heart.circle")
                .font(.custom("", size: 100))
                .foregroundColor(.red)
            
            Text("Items added to your Favorites will be saved here")
                .BagAndFavoriteTextFont()
            
            Spacer()
            
            ShopNowButton()
        }
        .padding()
        
    }
}

struct TabViewFavorites_Previews: PreviewProvider {
    static var previews: some View {
        TabViewFavorites()
    }
}
