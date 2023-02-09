//
//  ImageLoader.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import Foundation
import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    public func load(fromURLString urlString: String) {
        SANetworkManager.shared.getAppetizerImage(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else {return}
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
    
}
