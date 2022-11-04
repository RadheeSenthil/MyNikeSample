//
//  TabViewProfile.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct TabViewProfile: View {
    var body: some View {
        
        VStack {
            VStack {
                
                Text("RADHIKA \nSENTHIL KUMAR")
                    .bold()
                    .multilineTextAlignment(.center)
                Image(systemName: "person.fill")
                    .padding()
            }
            .EmptyTabViewFont()
            
            EditProfileButton()
        }
        
        
        
    }
}

struct TabViewProfile_Previews: PreviewProvider {
    static var previews: some View {
        TabViewProfile()
    }
}
