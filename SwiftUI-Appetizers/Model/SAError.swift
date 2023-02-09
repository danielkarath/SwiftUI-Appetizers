//
//  SAError.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import Foundation

/// Represents possible decoding errors
@frozen enum SAError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
