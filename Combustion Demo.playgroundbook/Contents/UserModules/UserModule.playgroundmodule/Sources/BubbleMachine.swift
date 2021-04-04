import Foundation

public struct BubbleMachine {
    var scene: BubbleScene

    init(scene: BubbleScene) {
        self.scene = scene
    }

    public enum BubbleType {
        /// A nonflammable substance.
        case water
        case methane
    }

    public func createBubble(type: BubbleType, _ doNotTellTrackerAboutMethaneReleaseToWorkaroundStrangeIssueWithFire:
            Bool = false) {
        let name: String
        switch type {
        case .methane:
            name = "methane"
        case .water:
            name = "water"
        }

        scene.createBubble(named: name, doNotTellTrackerAboutMethaneReleaseToWorkaroundStrangeIssueWithFire)
    }
}
