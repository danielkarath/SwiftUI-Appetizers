//
//  SARemoteImage.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import SwiftUI

struct SARemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct SAAppetizerRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var image: Image?
    
    var body: some View {
        SARemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(fromURLString: urlString)
                print(urlString)
            }
    }
}
