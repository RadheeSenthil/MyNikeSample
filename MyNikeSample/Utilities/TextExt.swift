//
//  TextExt.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI



// ******** Starts - BagAndFavoriteTextFont

struct DefaultTextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.title3)
            .multilineTextAlignment(.center)
    }
    
}

extension Text {
    
    func BagAndFavoriteTextFont() -> some View {
        modifier(DefaultTextModifier())
    }
}

// ******** Ends - BagAndFavoriteTextFont

// ******** Starts - NewArrivalsTitleFont

struct NewArrivalsTitleModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.footnote)
            .bold()
        
    }
    
}

extension Text {
    
    func NewArrivalsTitleFont() -> some View {
        modifier(NewArrivalsTitleModifier())
    }
}


// ******** Ends - NewArrivalsTitleFont

// ******** Starts - NewArrivalsPriceFont
struct NewArrivalsPriceModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.footnote)
            .foregroundColor(.gray)
    }
    
}

extension Text {
    
    func NewArrivalsPriceFont() -> some View {
        modifier(NewArrivalsPriceModifier())
    }
}

// ******** Ends - NewArrivalsPriceFont


// ******** Starts - CategoriesTitleFont
struct CategoriesTitleModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.title2)
            .bold()
            .foregroundColor(Color(hex: 0xfdfdfd))
 }
    
}

extension Text {
    
    func CategoriesTitleFont() -> some View {
        modifier(CategoriesTitleModifier())
    }
}

// ******** Ends - CategoriesTitleFont

struct TextExt_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 30) {
            Text( "Hello, World! Hello World! Hello World Hellow World ")
                .BagAndFavoriteTextFont()
            Text("Women Shoes")
                .NewArrivalsTitleFont()
            Text("$110")
                .NewArrivalsPriceFont()
            Text("Accessories")
                .CategoriesTitleFont()
        }
    }
}
