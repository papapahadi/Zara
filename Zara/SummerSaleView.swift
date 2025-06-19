//
//  SummerSale.swift
//  Zara
//
//  Created by Jatin Singh on 19/06/25.
//

import SwiftUI

var SummerSaleView: some View {
    VStack(alignment: .leading, spacing: 10) {
        Text("Summer Sale")
            .font(.custom("Didot", size: 28))
            .fontWeight(.bold)
        
        Text("Up to 50% off on selected items")
            .font(.subheadline)
            .foregroundColor(.gray)
        
        Button(action: {
            // Handle sale button action
        }) {
            Text("Shop Now")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(8)
        }
    }
    .padding()
    .frame(maxWidth: .infinity, alignment: .leading)
    .background(Color.yellow.opacity(0.1))
    .cornerRadius(12)
}
