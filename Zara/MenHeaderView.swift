//
//  MenHeaderView.swift
//  Zara
//
//  Created by Jatin Singh on 21/06/25.
//

import SwiftUI

var headerView: some View {
    VStack(spacing: 0) {
        //image aayegi
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                NavigationLink (destination: LadiesView()) {
                    Text("Shirts")
                        .modifier(headerStyle())
                }
            
                Text("Pants")
                    .modifier(headerStyle())
            
                Text("Jackets")
                    .modifier(headerStyle())
                   
                Text("Shoes")
                    .modifier(headerStyle())
            }
            .padding(.horizontal)
        }
        .padding(.vertical, 10)
        
        Divider()
    }
    .background(Color.white)
}
