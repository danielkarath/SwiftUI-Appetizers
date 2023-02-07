//
//  ContentView.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/6/23.
//

import SwiftUI

struct SAAppetizerTabView: View {
    var body: some View {
        TabView {
            SAAppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            SAAccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            SAOrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }

        }
        .accentColor(SAResources.shared.brandDarkGreen)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SAAppetizerTabView()
    }
}
