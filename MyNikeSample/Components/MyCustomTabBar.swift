//
//  MyCustomTabBar.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct MyCustomTabBar: View {
    
    @Binding var selectedCustomTab: Int
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                MyCustomTabButton(title: "Men", isSelected: selectedCustomTab == 0)
                    .onTapGesture {
                        withAnimation {
                            selectedCustomTab = 0
                        }
                    }
                Spacer()
                MyCustomTabButton(title: "Women", isSelected: selectedCustomTab == 1)
                    .onTapGesture {
                        withAnimation {
                            selectedCustomTab = 1
                        }
                    }
                Spacer()
                MyCustomTabButton(title: "Kids", isSelected: selectedCustomTab == 2)
                    .onTapGesture {
                        withAnimation {
                            selectedCustomTab = 2
                        }
                    }
                Spacer()
            }
            .padding()
            
            Spacer()
        }
    }
}

struct MyCustomTabBar_Previews: PreviewProvider {
    
    @State static var selectedCustomTab : Int = 1
    
    static var previews: some View {
        
        MyCustomTabBar(selectedCustomTab: $selectedCustomTab)
    }
}
