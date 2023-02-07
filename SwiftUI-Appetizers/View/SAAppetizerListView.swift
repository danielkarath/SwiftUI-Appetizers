//
//  SAAppetizerListView.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/6/23.
//

import SwiftUI

struct SAAppetizerListView: View {
    
    private let viewTitle: String = "Appetizers"
    
    var body: some View {
        NavigationView {
            List(MockData.appetizers, id: \.id) { appetizer in
                SAAppetizerListViewCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

struct SAAppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        SAAppetizerListView()
    }
}
