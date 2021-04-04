/*:
 Usually, alkanes aren't very reactive. However, as described in the previous page, they can react with oxygen to undergo combustion. To kickstart the reaction, heat is needed.
 
 # Your Task
 Your mouse is very hot! Click "Run My Code", then click the methane bubble as it flies up to see the reaction!
 
 - Note: If you missed the bubble and it went off-screen, just click "Stop" then click "Run My Code" again.
 */
//#-hidden-code
import PlaygroundSupport
let lab = LabView(showNextOnMethaneBubbleRelease: false, showNextOnMethaneBurn: true)
lab.scene.allowsFire = true
PlaygroundPage.current.setLiveView(lab)
//#-end-hidden-code
lab.scene.machine?.createBubble(type: /*#-editable-code type of bubble*/.methane/*#-end-editable-code*/, true)
