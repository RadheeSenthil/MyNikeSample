//
//  EditProfileButton.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct EditProfileButton: View {
    var body: some View {
        
        HStack {
            Text("EDIT PROFILE")
                .font(.footnote)
                .bold()
                .padding(10)
                .padding(.horizontal, 5)
                .overlay(
                    Rectangle()
                        .stroke(.gray, lineWidth:1)
                   )
        }

    }
}

struct EditProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileButton()
    }
}
