//
//  SAAlert.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import Foundation
import SwiftUI

struct SAAlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct SAAlertContext {
    static let invalidURL: SAAlertItem = SAAlertItem(title: Text("Issue connecting to server"), message: Text("The resource page does not exist"), dismissButton: .default(Text("OK")))
    static let invalidData: SAAlertItem = SAAlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid. Please contact support."), dismissButton: .default(Text("OK")))
    static let invalidResponse: SAAlertItem = SAAlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid. Please contact support."), dismissButton: .default(Text("OK")))
    static let unableToComplete: SAAlertItem = SAAlertItem(title: Text("Unable to connect"), message: Text("Please check your internet connection."), dismissButton: .default(Text("OK")))
}
