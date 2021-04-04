/*:
 # Background
 A hydrocarbon, as the name suggests, is a compound that only contains hydrogen and carbon. They are an important part of chemistry, and are a basic compound that we use to make many, more complex compounds, such as those found in plastics.
 
 Alkanes are one type (*homologous series*) of hydrocarbon. In alkanes, carbon has 4 covalent bonds to other atoms. For example, an alkane with one carbon atom will have four single bonds to four other hydrogen atoms. Alkanes only contain single bonds to other atoms.
 
 Alkanes can also have multiple carbons. For example, in an alkane with two carbons, the two carbon atoms will be bonded to each other, and each carbon atom will have 3 bonds to hydrogen atoms (making 2 carbon atoms and 6 hydrogen atoms in total).
 
 One way to represent alkanes is with their displayed formula. You can think of this as a flat, 2D model. Alkanes are actually 3D, but the displayed formula allows us to easily see the bonds within the alkane.
 
 # Your Task
 - Note: You may want to enter full-screen mode and/or hide the editor/sidebar to see the full displayed formula,
 especially for the alkanes with longer carbon chains.

 You'll see the types of alkanes in the `alkaneMembers` array in their displayed form (with color) to the right. Try using code completion to fill in some names of alkanes, and see what they look like by pressing "Run My Code". When you're ready to continue, click "Next".
 
 - Note: Only the first eight members of the alkane series are supported. Alkanes with more than 8 carbons exist, but aren't supported by this playground.

 */
//#-hidden-code
import PlaygroundSupport
//#-end-hidden-code
let alkaneMembers: [Alkane.Member] = [
    /*#-editable-code member of alkane group*/.methane/*#-end-editable-code*/,
    /*#-editable-code member of alkane group*/.ethane/*#-end-editable-code*/,
    /*#-editable-code member of alkane group*/.octane/*#-end-editable-code*/
]
//#-hidden-code
let alkanes = alkaneMembers.map(Alkane.init)
PlaygroundPage.current.setLiveView(AlkaneListView(alkanes))
//#-end-hidden-code
