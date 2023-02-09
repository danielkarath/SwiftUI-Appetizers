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
    @Published var alertItem: SAAlertItem?
    @Published var isLoading: Bool = false
    
    public func getAppetizers() {
        isLoading = true
        SANetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    self.isLoading = false
                case .failure(let error):
                    self.isLoading = false
                    switch error {
                    case .invalidURL:
                        self.alertItem = SAAlertContext.invalidURL
                    case .invalidData:
                        self.alertItem = SAAlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = SAAlertContext.unableToComplete
                    case .invalidResponse:
                        self.alertItem = SAAlertContext.invalidResponse
                    default:
                        print(error.localizedDescription)
                    }
                }
            }
        }
    }
}
