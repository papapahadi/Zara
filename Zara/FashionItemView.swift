//
//  FashionItemView.swift
//  Zara
//
//  Created by Jatin Singh on 19/06/25.
//

import SwiftUI

struct FashionItemView: View {
    let item: FashionItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(item.url, id: \.self) { id in
                        Image(id)
                            .resizable()
                            .frame(height: 400)
                            .shadow(radius: 10)
                            .clipShape(.rect(cornerRadius: 8))
                            .containerRelativeFrame(.horizontal) { size, axis in
                                return size * 1
                            }
                    }

                }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(item.name)
                    .font(.custom("Didot", size: 20))
                    .fontWeight(.bold)
                
                Text(item.designer)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(item.price)
                    .font(.headline)
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 3)
        }
        .padding()
    }
}


let demo  = FashionItem(id: 1, url: ["image1a", "image1b"] , name: "Silk Oversized Shirt", price: "$1,299", designer: "Elegance")
    
#Preview {
    FashionItemView(item: demo)
}
