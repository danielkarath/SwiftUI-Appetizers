//
//  Appetizer.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/6/23.
//

import Foundation

struct Appetizer: Decodable {
    
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let calories: Int
    let carbs: Int
    let protein: Int
    
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer: Appetizer = Appetizer(
        id: 3,
        name: "Buffalo Chicken Bites",
        description: "The tasty bites of chicken have just the right amount of kick to them.",
        imageURL: "asian-flank-steak",
        price: 7.49,
        calories: 800,
        carbs: 22,
        protein: 5
    )
    
    static let appetizers: [Appetizer] = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
}
