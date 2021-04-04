import PlaygroundSupport
import SwiftUI

public struct WelcomePage: View {
    public init() {}
    public var body: some View {
        VStack {
            Text("Welcome to organic chemistry!")
            Button {
                PlaygroundPage.current.navigateTo(page: .next)
            } label: {
                    Text("🧪 Start")
                        .foregroundColor(.primary)
                        .padding()
                        .background(Capsule())
            }
        }
        .padding()
        .font(.largeTitle)
    }
}
