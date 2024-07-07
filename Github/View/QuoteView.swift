import SwiftUI

struct QuoteView: View {
    let quotes = [
        "Remember you will die.",
        "Memento mori.",
        "Every moment is a gift.",
        "Life is short, make it sweet."
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(quotes.randomElement()!)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.primary)
            
            Spacer()
        }
        .background(Color(UIColor.systemBackground)) // Use system background color
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
            .preferredColorScheme(.dark) // Preview in dark mode
    }
}
