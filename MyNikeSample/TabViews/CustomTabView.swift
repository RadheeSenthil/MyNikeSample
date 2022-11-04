//
//  CustomTabView.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct CustomTabView: View {
    
    @State var selectedCustomTab : Int = 1
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 50)
            TabView(selection: $selectedCustomTab) {
                TabViewMen()
                    .tag(0)
                TabViewWomen()
                    .tag(1)
                TabViewKids()
                    .tag(2)
           }
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            }
        .overlay(alignment: .bottomTrailing) {
            MyCustomTabBar(selectedCustomTab: $selectedCustomTab)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
