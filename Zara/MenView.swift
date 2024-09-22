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

struct MenView: View {
    @State private var selectedTab = 0
    
    let fashionItems: [FashionItem] = [
        FashionItem(id: 1, url: ["image1a", "image1b"] , name: "Silk Oversized Shirt", price: "$1,299", designer: "Elegance"),

        FashionItem(id: 3, url: ["image2a", "image2b"], name: "Tailored Jacket", price: "$1,899", designer: "Sharp & Co.")
    ]
    
    var body: some View {
        NavigationStack {
            VStack() {
                Image("men1")
                    .resizable()
                    .scaledToFit()
                headerView
                ScrollView {
                    VStack(spacing: 20) {
                        summerSaleView
                        
                        ForEach(fashionItems) { item in
                            FashionItemView(item: item)
                        }
                    }
                    .padding()
                }
            }
            .ignoresSafeArea()
        }
        
    }
    
    var headerView: some View {
        VStack(spacing: 0) {
            //image aayegi
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    Text("Shirts")
                        .modifier(headerStyle())
                
                    Text("Pants")
                        .modifier(headerStyle())
                
                    Text("Jackets")
                        .modifier(headerStyle())
                       
                    Text("Shoes")
                        .modifier(headerStyle())
                }
                .padding(.horizontal)
            }
            .padding(.vertical, 10)
            
            Divider()
        }
        .background(Color.white)
    }
    
    var summerSaleView: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Summer Sale")
                .font(.custom("Didot", size: 28))
                .fontWeight(.bold)
            
            Text("Up to 50% off on selected items")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Button(action: {
                // Handle sale button action
            }) {
                Text("Shop Now")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.yellow.opacity(0.1))
        .cornerRadius(12)
    }
}

struct FashionItem: Identifiable {
    let id: Int
    let url: [String]
    let name: String
    let price: String
    let designer: String
}

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
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 3)
        }
    }
}

struct Men_Previews: PreviewProvider {
    static var previews: some View {
        MenView()
    }
}
