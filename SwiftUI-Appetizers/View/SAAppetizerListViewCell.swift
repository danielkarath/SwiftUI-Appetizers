//
//  SAAppetizerListViewCell.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/6/23.
//

import SwiftUI

struct SAAppetizerListViewCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack(spacing: 24) {
            SAAppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8)
                .frame(maxWidth: (UIScreen.main.bounds.width-48)/3, maxHeight: (UIScreen.main.bounds.width-48)/4)
            
            VStack(spacing: -10) {
                Text(appetizer.name)
                    .frame(maxWidth: (UIScreen.main.bounds.width-48)/2, maxHeight: (UIScreen.main.bounds.width-48)/8, alignment: .leading)
                    .font(.body)
                    .fontWeight(.medium)
                    .scaledToFit()
                    .minimumScaleFactor(0.65)
                Text(String(appetizer.price))
                    .frame(maxWidth: (UIScreen.main.bounds.width-48)/2, maxHeight: (UIScreen.main.bounds.width-48)/8, alignment: .leading)
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .minimumScaleFactor(0.65)
            }
        }
    }
}

struct SAAppetizerListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        SAAppetizerListViewCell(appetizer: MockData.sampleAppetizer)
    }
}
