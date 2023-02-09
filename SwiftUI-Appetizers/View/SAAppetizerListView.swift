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
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    SAAppetizerListViewCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            if viewModel.isLoading {
                SALoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

struct SAAppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        SAAppetizerListView()
    }
}
