//
//  MyCustomTabButton.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct MyCustomTabButton: View {
    
    let title : String
    let isSelected : Bool
    
    var body: some View {
        
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(isSelected ? .black : .gray)
                .background {
                    
                    VStack {
                        Spacer()
                        HStack {
                            Rectangle()
                                .frame(width: isSelected ?  30 : 0, height: 3, alignment: .leading)
                                .foregroundColor(Color.black)
                                .offset(CGSize(width: 0, height: 5))
                            
                            Spacer()
                        }
                    }
                }
            LineView()
        }
    }
}

struct MyCustomTabButton_Previews: PreviewProvider {
    static var previews: some View {
        
        MyCustomTabButton(title: "Men", isSelected: false)
        
        MyCustomTabButton(title: "Kids", isSelected: true)
    }
}
