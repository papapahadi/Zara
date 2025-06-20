//
//  LuxeView.swift
//  Disha
//
//  Created by Jatin Singh on 22/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomePageView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
                }
        }
        .tint(.black)
        
    }
}


#Preview {
    ContentView()
}
