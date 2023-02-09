//
//  SAAppetizerListView.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/6/23.
//

import SwiftUI

struct SAAppetizerListView: View {
    
    @StateObject public var viewModel = SAListViewModel()
    
    private let viewTitle: String = "Appetizers"
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers, id: \.id) { appetizer in
                SAAppetizerListViewCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

struct SAAppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        SAAppetizerListView()
    }
}
