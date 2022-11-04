//
//  MyAsyncImage.swift
//  MyNikeSample
//
//  Created by Radhika Senthil on 11/3/22.
//

import SwiftUI

struct MyAsyncImage: View {
    
    let imageURL : String
    let imageWidth : Double
    let imageHeight : Double
    let isRemote: Bool
    
    var body: some View {
        
        HStack {
            if(isRemote) {
                AsyncImage(
                    url: URL(string: imageURL),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: imageWidth, height: imageHeight)
                    },
                    placeholder: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: imageWidth, height: imageHeight, alignment: .leading)
                            .foregroundColor(.gray)
                    }
                )
            } else {
                Image(imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageWidth, height: imageHeight)
                
            }
        }
        
    }
}

struct MyAsyncImage_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let remoteImage = "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2b2fd243-2ff5-4604-a07d-aacf6b62d060/sportswear-womens-oversized-fleece-tie-dye-crew-sweatshirt-rN6q6r.png"
        
        let localImage = "img-featured"
            
        VStack(spacing: 20) {
            MyAsyncImage(imageURL: "", imageWidth: 200, imageHeight: 200, isRemote: true)
            
            
            MyAsyncImage(imageURL: remoteImage, imageWidth: 200, imageHeight: 200, isRemote: true)
            
            MyAsyncImage(imageURL: localImage,  imageWidth: 200, imageHeight: 200, isRemote: false)
        }

        
    }
}
