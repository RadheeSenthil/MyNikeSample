//
//  ViewAllButton.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct ViewAllButton: View {
    var body: some View {
        
        HStack {
            Text("View All")
                .padding(10)
                .padding(.horizontal, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.gray, lineWidth:1)
                )
        }
        .padding()
    }
}

struct ViewAllButton_Previews: PreviewProvider {
    static var previews: some View {
        ViewAllButton()
    }
}
