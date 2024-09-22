//
//  LadiesView.swift
//  Disha
//
//  Created by Jatin Singh on 22/09/24.
//

import SwiftUI

struct LadiesView: View {
    
    let fashionItems: [FashionItem] = [
        FashionItem(id: 1, url: ["ladies1a", "ladies1b"] , name: "Cashmere dress", price: "$2,499", designer: "Lotus"),

        FashionItem(id: 3, url: ["ladies2a", "ladies2b"], name: "Oversize White Shirt", price: "$3,999", designer: "Anthony & Mark")
    ]
    
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
                        salesView
                        ForEach(fashionItems) { item in
                            FashionItemView(item: item)
                        }
                    }
                    .padding(.horizontal)
                }
                
            }
            .ignoresSafeArea()
        }
    }
    
    var salesView: some View {
        return VStack(alignment: .leading, spacing: 10) {
            Text("Summer Sale")
                .font(.custom("Didot", size: 28))
                .fontWeight(.bold)
            
            Text("Up to 50% off on selected items")
                .font(.subheadline)
                .foregroundStyle(.gray)
            
            Text("Shop Now")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.yellow.opacity(0.1))
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
