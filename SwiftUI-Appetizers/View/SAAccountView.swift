//
//  SAAccountView.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/6/23.
//

import SwiftUI

struct SAAccountView: View {
    
    private let viewTitle: String = "Account"
    
    var body: some View {
        NavigationView {
            Text(viewTitle)
                .navigationTitle(viewTitle)
        }
    }
}

struct SAAccountView_Previews: PreviewProvider {
    static var previews: some View {
        SAAccountView()
    }
}
