//
//  ShopNowButton.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct ShopNowButton: View {
    var body: some View {
        
        HStack {
            Spacer()
            Text("Shop Now")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .frame(width: 300, height: 60)
                .background(RoundedRectangle(cornerRadius: 30)
                .fill(Color.black))
            Spacer()
            
        }
        .padding()
        
    }
}

struct ShopNowButton_Previews: PreviewProvider {
    static var previews: some View {
        ShopNowButton()
    }
}
