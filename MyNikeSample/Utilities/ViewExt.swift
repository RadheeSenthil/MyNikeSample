//
//  ViewExt.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct EmptyTabViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.largeTitle)
            .foregroundColor(.cyan)
        
    }
    
}

extension View {
    
    func EmptyTabViewFont() -> some View {
        
        modifier(EmptyTabViewModifier())
    }
}


struct ViewExt_Previews: PreviewProvider {
    static var previews: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .EmptyTabViewFont()
  
    }
}
