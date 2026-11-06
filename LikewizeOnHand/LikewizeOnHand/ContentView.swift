import SwiftUI

/// Likewize brand violet, #3200BE — also the colour behind the status bar.
let likewizeViolet = Color(red: 50 / 255, green: 0, blue: 190 / 255)

struct ContentView: View {
    var body: some View {
        WebView()
            .ignoresSafeArea()
            .background(likewizeViolet)
    }
}

#Preview {
    ContentView()
}
