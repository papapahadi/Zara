//
//  HomePageView.swift
//  Zara
//
//  Created by Jatin Singh on 21/06/25.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ZStack() {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1..<5, id: \.self) { i in
                        Image("hs\(i)")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Zara")
                        .font(.custom("Didot", size: 36))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .offset(x: 30, y: -300)
                    Spacer()
                }
                VStack(alignment : .leading) {
                    
                    Text("Sales")
                    
                    NavigationLink(destination: LadiesView()) {
                        Text("Ladies")
                    }
                    NavigationLink(destination: MenView()) {
                        Text("Men")
                    }
                    NavigationLink(destination: AboutUsView()) {
                        Text("About Us")
                    }
                }
            }
            .font(.custom("Didot", size: 20))
            .foregroundStyle(.black)
            .padding(.horizontal)
        }
        .padding()
        
     
    }
}

#Preview {
    HomePageView()
}
