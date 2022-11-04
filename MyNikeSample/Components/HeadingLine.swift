//
//  HeadingLine.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct HeadingLine: View {
    
    let title: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .font(.title3)
                .bold()
            
            Spacer()
            
        }
    }
}

struct HeadingLine_Previews: PreviewProvider {
    static var previews: some View {
        HeadingLine(title: "Must-Haves, Best Sellers & More")
    }
}
