//
//  TabViewBag.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct TabViewBag: View {
    var body: some View {
        
        VStack(spacing:10) {
            Spacer()
            Image(systemName: "bag.circle")
                .font(.custom("", size: 100))
                .foregroundColor(.blue)
            
            Text("Your Bag is empty. \n When you add products, \n they'll appear here")
                .BagAndFavoriteTextFont()

            Spacer()
            
            ShopNowButton()
        }
        .padding()
    }
}

struct TabViewBag_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBag()
    }
}
