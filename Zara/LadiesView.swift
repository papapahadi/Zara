//
//  LadiesView.swift
//  Disha
//
//  Created by Jatin Singh on 22/09/24.
//

import SwiftUI

struct LadiesView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Image("ladies")
                            .resizable()
                            .scaledToFit()
                    }
                    Divider()
                    headerView
                    VStack { 
                        SummerSaleView
                            .padding()
                        
                        ForEach(fashionItemsLady) { item in
                            FashionItemView(item: item)
                        }
                    }
                    .padding(.horizontal)
                }
                
            }
            .ignoresSafeArea()
        }
    }
    

    
    var headerView: some View {
        let headers = ["Tops", "Bottoms", "Dress", "Jackets"]
        return VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(headers, id: \.self) { head in
                        Text(head)
                            .modifier(headerStyle())
                    }
                }
                .padding(.horizontal)
            }
            .padding()
            
            Divider()
        }
        .background(Color.white)
    }

}



#Preview {
    LadiesView()
}
