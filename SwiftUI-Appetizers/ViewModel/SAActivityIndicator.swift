//
//  SALoadingView.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import Foundation
import SwiftUI

struct SAActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = .brandDarkGreen
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
}
