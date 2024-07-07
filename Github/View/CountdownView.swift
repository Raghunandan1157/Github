import SwiftUI

struct CountdownView: View {
    @State private var targetDate = Calendar.current.date(byAdding: .year, value: 1, to: Date())!
    @State private var timeRemaining: String = ""

    var body: some View {
        VStack {
            Spacer()
            
            Text("Time Remaining")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.primary)
            
            Text(timeRemaining)
                .font(.title)
                .foregroundColor(.primary)
                .padding()
            
            Spacer()
        }
        .background(Color(UIColor.systemBackground)) // Use system background color
        .onAppear(perform: startTimer)
    }

    func timeRemainingString() -> String {
        let now = Date()
        let components = Calendar.current.dateComponents([.day, .hour, .minute, .second], from: now, to: targetDate)
        return "\(components.day ?? 0) Days \(components.hour ?? 0) Hours \(components.minute ?? 0) Minutes \(components.second ?? 0) Seconds"
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.timeRemaining = self.timeRemainingString()
        }
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView()
            .preferredColorScheme(.dark) // Preview in dark mode
    }
}
