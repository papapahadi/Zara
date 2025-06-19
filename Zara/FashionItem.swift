//
//  FashionItem.swift
//  Zara
//
//  Created by Jatin Singh on 19/06/25.
//

import Foundation

struct FashionItem: Identifiable {
    let id: Int
    let url: [String]
    let name: String
    let price: String
    let designer: String
}

let fashionItemsLady: [FashionItem] = [
    FashionItem(id: 1, url: ["ladies1a", "ladies1b"] , name: "Cashmere dress", price: "$2,499", designer: "Lotus"),

    FashionItem(id: 3, url: ["ladies2a", "ladies2b"], name: "Oversize White Shirt", price: "$3,999", designer: "Anthony & Mark")
]

let fashionItemsMen: [FashionItem] = [
    FashionItem(id: 1, url: ["image1a", "image1b"] , name: "Silk Oversized Shirt", price: "$1,299", designer: "Elegance"),

    FashionItem(id: 3, url: ["image2a", "image2b"], name: "Tailored Jacket", price: "$1,899", designer: "Sharp & Co.")
]

