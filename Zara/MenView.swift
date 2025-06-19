import SwiftUI


struct MenView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            VStack() {
                Image("men1")
                    .resizable()
                    .scaledToFit()
                headerView
                ScrollView {
                    VStack(spacing: 20) {
                        SummerSaleView
                            .padding()
                        
                        ForEach(fashionItemsMen) { item in
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
    
 
}

struct Men_Previews: PreviewProvider {
    static var previews: some View {
        MenView()
    }
}
