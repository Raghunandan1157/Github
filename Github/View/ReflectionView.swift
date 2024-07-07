import SwiftUI

struct ReflectionView: View {
    @AppStorage("reflection") private var reflection: String = ""
    
    var body: some View {
        VStack {
            Text("Reflect on Life")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.primary)
            
            TextEditor(text: $reflection)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding()
            
            Spacer()
        }
        .background(Color(UIColor.systemBackground)) // Use system background color
        .navigationBarTitle("Reflect")
    }
}

struct ReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionView()
            .preferredColorScheme(.dark) // Preview in dark mode
    }
}
