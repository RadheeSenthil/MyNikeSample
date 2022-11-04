//
//  TabViewMen.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct TabViewMen: View {
    
    var body: some View {
        
        VStack {
            Text("Men")
                .bold()
            Image(systemName: "person.fill")
                .padding()
                
        }
        .EmptyTabViewFont()
    }
}

struct TabViewMen_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMen()
    }
}
