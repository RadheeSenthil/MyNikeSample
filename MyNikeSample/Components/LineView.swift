//
//  LineView.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct LineView: View {
  
    var body: some View {
        
        HStack {
             Path() { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 300, y: 0))
             }
            .stroke(Color(hex: 0xC8C8C8), lineWidth: 1)
        }
        
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
