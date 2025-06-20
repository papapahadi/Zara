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
    
}

struct Men_Previews: PreviewProvider {
    static var previews: some View {
        MenView()
    }
}
