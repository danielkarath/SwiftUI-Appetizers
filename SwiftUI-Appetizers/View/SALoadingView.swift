//
//  SALoadingView.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import SwiftUI

struct SALoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            SAActivityIndicator()
        }
    }
}

struct SALoadingView_Previews: PreviewProvider {
    static var previews: some View {
        SALoadingView()
    }
}
