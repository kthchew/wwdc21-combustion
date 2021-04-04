import PlaygroundSupport
import SpriteKit
import SwiftUI

public struct LabView: View {
    public var scene = BubbleScene()
    let showNextOnMethaneBubbleRelease: Bool
    let showNextOnMethaneBurn: Bool

    @ObservedObject var tracker = LabTracker() // @StateObject doesn't work, and I can't use a StateObject in main.swift and pass it here

    public init(showNextOnMethaneBubbleRelease: Bool = false, showNextOnMethaneBurn: Bool = false, useTracker: Bool =
    true) {
        self.showNextOnMethaneBubbleRelease = showNextOnMethaneBubbleRelease
        self.showNextOnMethaneBurn = showNextOnMethaneBurn
        // `useTracker` is a workaround because without this, only the first bubble pops when pressed on the
        // conclusion page
        if useTracker {
            scene.tracker = tracker
        }
        scene.size = CGSize(width: 1024, height: 768)
    }

    public var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .frame(width: 1024, height: 768)
            if showNextOnMethaneBubbleRelease && tracker.didReleaseMethane {
                nextButton
            } else if showNextOnMethaneBurn && tracker.didBurnMethane {
                nextButton
            }
        }
    }

    var nextButton: some View {
        VStack {
            Text("Good job!")
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
