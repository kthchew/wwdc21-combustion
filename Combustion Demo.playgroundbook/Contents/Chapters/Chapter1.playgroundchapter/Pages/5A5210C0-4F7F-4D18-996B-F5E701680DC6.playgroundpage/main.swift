/*:
 You've reached the end of this playground! I hope you learned something, and enjoyed this experience!

 -- Kenneth Chew
 */
//#-hidden-code
import Cocoa
import PlaygroundSupport
let lab = LabView(useTracker: false)
lab.scene.allowsFire = true
PlaygroundPage.current.setLiveView(lab)
//#-end-hidden-code
//#-editable-code
let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
    lab.scene.machine?.createBubble(type: .methane, true)
}
//#-end-editable-code
