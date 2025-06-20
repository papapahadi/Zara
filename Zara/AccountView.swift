//
//  AccountView.swift
//  Zara
//
//  Created by Jatin Singh on 21/06/25.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                // MARK: - Profile Info
                VStack(spacing: 10) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                    
                    Text("Justin")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("justin@yahoo.com")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.top, 30)
                
                // MARK: - Buttons
                VStack(spacing: 16) {
                    AccountRow(icon: "pencil", label: "Edit Profile")
                    AccountRow(icon: "cart", label: "My Orders")
                    AccountRow(icon: "gearshape", label: "Settings")
                    AccountRow(icon: "arrow.right.square", label: "Logout", isDestructive: true)
                }
                .padding(.horizontal)

                Spacer()
            }
            .navigationTitle("My Account")
            .background(Color(.systemGroupedBackground))
        }
    }
}

// MARK: - Reusable Row
struct AccountRow: View {
    let icon: String
    let label: String
    var isDestructive: Bool = false

    var body: some View {
        HStack {
            Image(systemName: icon)
                .frame(width: 30, height: 30)
                .foregroundColor(isDestructive ? .red : .blue)

            Text(label)
                .foregroundColor(isDestructive ? .red : .primary)

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 1)
    }
}


#Preview {
    AccountView()
}
