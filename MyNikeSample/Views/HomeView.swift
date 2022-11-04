//
//  HomeView.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab : Int = 1
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            TabViewHome()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            TabViewShop()
                .tabItem {
                    Image(systemName: "s.square")
                    Text("Shop")
                }
                .tag(1)
            
            TabViewFavorites()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
                .tag(2)
            
            TabViewBag()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Bag")
                }
                .tag(3)
            
            TabViewProfile()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(4)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
