import SpriteKit
import SwiftUI

public class BubbleScene: SKScene {
    private let bubbleTexture = SKTexture(image: #imageLiteral(resourceName: "food-tiny-bubble.png"))
    /// Whether clicking a bubble applies heat.
    public var allowsFire = false
    public var machine: BubbleMachine?
    var tracker: LabTracker?

    public override func didMove(to view: SKView) {
        let background = SKSpriteNode(color: .black, size: CGSize(width: 1024, height: 768))
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = -1
        background.blendMode = .replace
        addChild(background)

        let machineTexture = SKTexture(image: #imageLiteral(resourceName: "purzen-A-green-cartoon-pipe.png"))
        let machineNode = SKSpriteNode(texture: machineTexture)
        machineNode.position = CGPoint(x: size.width / 2, y: 30)
        machineNode.setScale(0.35)
        machineNode.name = "machine"
        machineNode.zPosition = 1
        addChild(machineNode)

        machine = BubbleMachine(scene: self)
    }

    public override func update(_ currentTime: TimeInterval) {
        let outOfBoundsNodes = children.filter { node in
            node.position.y > 830
        }
        for node in outOfBoundsNodes {
            node.removeFromParent()
        }
    }

    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard allowsFire else {
            return
        }
        guard let first = touches.first else {
            return
        }
        let touchedMethaneBubbles = nodes(at: first.location(in: self)).filter { node in
            node.name == "methane"
        }
        for node in touchedMethaneBubbles {
            let fire = getFire(at: node.position)
            addChild(fire)
            run(SKAction.playSoundFileNamed("flame.mp3", waitForCompletion: false))
            node.removeFromParent()
            tracker?.didBurnMethane = true
        }
    }

    func createBubble(named name: String, _ doNotTellTrackerAboutMethaneReleaseToWorkaroundStrangeIssueWithFire: Bool =
    false, _ andDoTheSameForMethaneBurn: Bool = false) {
        let bubbleNode = SKSpriteNode(texture: bubbleTexture)
        bubbleNode.name = name
        bubbleNode.position = CGPoint(x: size.width / 2, y: 0)
        bubbleNode.size = CGSize(width: 100, height: 100)
        bubbleNode.physicsBody = SKPhysicsBody(texture: bubbleTexture, size: bubbleNode.size)
        bubbleNode.physicsBody?.velocity = CGVector(dx: 0, dy: 140)
        bubbleNode.physicsBody?.linearDamping = 0
        bubbleNode.physicsBody?.affectedByGravity = false
        addChild(bubbleNode)

        if name == "methane" && !doNotTellTrackerAboutMethaneReleaseToWorkaroundStrangeIssueWithFire {
            // if the below line runs, and I later tap the bubble, it doesn't set on fire.
            // I have no idea what this has to do with it, but this is where
            // `doNotTellTrackerAboutMethaneReleaseToWorkaroundStrangeIssueWithFire` was born
            tracker?.didReleaseMethane = true
        }
    }

    private func getFire(at position: CGPoint) -> SKEmitterNode {
        let node = SKEmitterNode(fileNamed: "Flame.sks")!
        node.zPosition = 1
        node.position = position

        return node
    }
}
