//
//  HeaderStyleModifier.swift
//  Zara
//
//  Created by Jatin Singh on 19/06/25.
//

import SwiftUI

struct headerStyle : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.black)
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(Capsule().stroke(Color.black, lineWidth: 1))
    }
}

