//
//  TabViewKids.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct TabViewKids: View {
    var body: some View {
        
        VStack {
            Text("Kids")
                .bold()
            Image(systemName: "figure.and.child.holdinghands")
                .padding()
                
        }
        .EmptyTabViewFont()
        
    }
}

struct TabViewKids_Previews: PreviewProvider {
    static var previews: some View {
        TabViewKids()
    }
}
