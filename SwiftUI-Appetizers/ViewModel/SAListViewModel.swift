//
//  SAListViewModel.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import Foundation
import SwiftUI

final class SAListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    public func getAppetizers() {
        SANetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
