import SwiftUI

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            Spacer()

            if searchText.isEmpty {
                Text("What are you looking for?")
                    .font(.title2)
                    .foregroundColor(.gray)
            } else {
                Text("Results for \"\(searchText)\"")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
            }
            
            Spacer()

            TextField("Search...", text: $searchText)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding()
                .padding(.bottom, 20)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
