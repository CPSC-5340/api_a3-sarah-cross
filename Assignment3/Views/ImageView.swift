//
//  ImageCardView.swift
//  Assignment3
//
//  Created by Sarah Cross on 3/15/23.
//

import SwiftUI

struct ImageView: View {
    
    var url : String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) {
            image in image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 170)
                .cornerRadius(10)
                .clipped()
            } placeholder: {
                ProgressView()
         }
         .frame(width: 170, height: 170)
           
    }
     
    
}


struct ImageCardView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: "http://mars.nasa.gov/mer/gallery/all/2/p/2208/2P322473707ESFB27MP2600L8M1-BR.JPG")
    }
}

