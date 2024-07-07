import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Welcome Home!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Spacer()
            
            Text("Enjoy your stay.")
                .font(.title2)
                .foregroundColor(.gray)
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
