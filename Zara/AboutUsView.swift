//
//  AboutUsView.swift
//  Disha
//
//  Created by Jatin Singh on 22/09/24.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ZStack(alignment: .center) {
                    Image("sustain")
                        .resizable()
                        .scaledToFit()
                    Text("Sustainability")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                VStack {
                    Text("At our core, we are committed to reducing the environmental impact of fashion. By sourcing sustainable materials and embracing eco-friendly production methods, we strive to create designs that balance style with responsibility. Together, we can shape a future where fashion and the planet thrive in harmony.")
                }
                .font(.subheadline)
                .padding()
                .foregroundStyle(.white)
                .background(Color.black)
                
                ZStack(alignment: .leading) {
                    Image("resuse")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    VStack {
                        HStack {
                            Text("Hello re-usable packaging!")
                                .font(.subheadline)
                                .padding()
                                .foregroundStyle(.black)
                                .background(Color.white)
                            Image(systemName: "arrow.right")
                        }
                        Text("Reuse eco-friendly paper bags")
                            .foregroundStyle(.white)
                            .font(.caption)
                    }
                    
                }
                
                VStack {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("SHOP")
                                .font(.headline)
                            VStack(alignment: .leading) {
                                Text("Ladies")
                                Text("Men")
                            }
                            .font(.footnote)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("CORPORATE INFO")
                                .font(.headline)
                            VStack(alignment: .leading){
                                Text("Career")
                                Text("Investor")
                                Text("Press")
                                
                            }
                            .font(.footnote)
                        }
                        
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("HELP")
                                .font(.headline)
                            VStack(alignment: .leading) {
                                Text("Customer Service")
                                Text("Find a store")
                            }
                            .font(.footnote)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Image("h&m")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70)
                
                Text("content of this site is copyright-protected.")
                    .font(.custom("SourceSansPro", size: 8))
                
                HStack {
                    Image("facebook")
                        .resizable()
                        .frame(width: 10, height: 10)
                    Image("instagram")
                        .resizable()
                        .frame(width: 10, height: 10)
                    Image("twitter")
                        .resizable()
                        .frame(width: 10, height: 10)
                    Image("youtube")
                        .resizable()
                        .frame(width: 10, height: 10)
                }
                .padding(.vertical)
               
                HStack {
                    Text("INDIA | Rs.")
                        .font(.caption)
                }
                
            }
        }
        .scrollBounceBehavior(.basedOnSize)
        .ignoresSafeArea()
        
    }
}

#Preview {
    AboutUsView()
}
