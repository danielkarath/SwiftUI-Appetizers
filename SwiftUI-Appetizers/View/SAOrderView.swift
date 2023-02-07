//
//  SAOrderView.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/6/23.
//

import SwiftUI

struct SAOrderView: View {
    
    private let viewTitle: String = "Order"
    
    var body: some View {
        NavigationView {
            Text(viewTitle)
                .navigationTitle(viewTitle)
        }
    }
}

struct SAOrderView_Previews: PreviewProvider {
    static var previews: some View {
        SAOrderView()
    }
}
