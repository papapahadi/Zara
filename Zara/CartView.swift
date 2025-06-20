//
//  CartView.swift
//  Zara
//
//  Created by Jatin Singh on 21/06/25.
//

import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let name: String
    let designer: String
    let price: Double
    var quantity: Int
}

struct CartView: View {
    @State private var cartItems: [CartItem] = [
        CartItem(name: "Classic Blazer", designer: "Zara", price: 89.99, quantity: 1),
        CartItem(name: "Denim Jeans", designer: "Levi's", price: 69.99, quantity: 2),
        CartItem(name: "Sneakers", designer: "Nike", price: 129.99, quantity: 1)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach($cartItems) { $item in
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(item.name)
                                        .font(.headline)
                                    
                                    Text(item.designer)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    
                                    Text(String(format: "$%.2f", item.price))
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                
                                Spacer()
                                
                                Stepper(value: $item.quantity, in: 1...10) {
                                    Text("\(item.quantity)")
                                }
                                .frame(width: 120)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 3)
                        }
                        .padding(.horizontal)
                        .padding(.top, 8)
                    }
                }

                Divider()
                
                HStack {
                    Text("Total:")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                    
                    Text(String(format: "$%.2f", totalAmount()))
                        .font(.title2)
                        .bold()
                }
                .padding()
                
                Button(action: {
                    // handle checkout
                }) {
                    Text("Proceed to Checkout")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
                .padding(.bottom, 10)
            }
            .navigationTitle("My Cart")
            .background(Color(.systemGroupedBackground))
        }
    }
    
    private func totalAmount() -> Double {
        cartItems.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
    }
}


#Preview {
    CartView()
}
