//
//  LuxeView.swift
//  Disha
//
//  Created by Jatin Singh on 22/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack() {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(1..<5, id: \.self) { i in
                            Image("hs\(i)")
                                .resizable()
                                .scaledToFit()
                            if i == 4 {
                                
                            }
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
                    .font(.custom("Didot", size: 20))
                    .foregroundStyle(.black)
                    .padding(.horizontal)
                }
                .padding()
                   
            }
            .frame(alignment: .leading)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
