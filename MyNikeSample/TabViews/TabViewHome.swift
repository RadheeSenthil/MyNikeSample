//
//  TabViewHome.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct TabViewHome: View {
    
    var body: some View {
        
        VStack {
            Text("Hello, Welcome \n To Nike World!")
                .bold()
            
            Image(systemName: "house.fill")
                .padding()
                 
        }
        .EmptyTabViewFont()
        
    }
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}
