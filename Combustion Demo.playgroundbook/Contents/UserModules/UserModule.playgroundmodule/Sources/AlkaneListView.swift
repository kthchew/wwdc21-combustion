import PlaygroundSupport
import SwiftUI

public struct AlkaneListView: View {
    public init(_ alkanes: [Alkane]) {
        self.list = alkanes
    }
    
    let list: [Alkane]
    
    public var body: some View {
        VStack {
            ForEach(list) { alkane in
                AlkaneView(alkane)
            }
            
            Button {
                PlaygroundPage.current.navigateTo(page: .next)
            } label: {
                Text("Next")
                    .foregroundColor(.primary)
                    .padding()
                    .background(Capsule())
            }
        }
    }
}
