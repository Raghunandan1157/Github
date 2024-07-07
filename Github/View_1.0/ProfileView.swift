import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .padding()

            Text("Your Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Spacer()
            
            Text("Here are your details.")
                .font(.title2)
                .foregroundColor(.gray)
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
