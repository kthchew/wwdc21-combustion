/*:
 # Background
 When burned in the presence of oxygen, alkanes undergo combustion. Some of the important reasons we do this is to generate electricity and fuel cars.
 
 If a lot of oxygen is present, the alkanes will undergo complete combustion. The equation looks like this:

 alkane + oxygen -> carbon dioxide + water
 
 Petrol contains octane (a member of the alkane group with 8 carbons). In a car engine with petrol, some of the petrol undergoes complete combustion, and the equation looks like this:

 octane + oxygen -> carbon dioxide + water
 
 Unfortunately, carbon dioxide is a greenhouse gas, which contributes to climate change. Even worse, when less oxygen is present, the fuel will undergo incomplete combustion instead. For any alkane, the reaction looks like this:

 alkane + oxygen -> carbon monoxide + water
 
 Carbon monoxide is toxic, and prolonged exposure to it can result in a lack of oxygen in your blood, resulting in dizziness or even death. Some broken gas heaters facilitate incomplete combustion. If this happens indoors and ventilation is poor, the resulting carbon monoxide can start to kill people inside, unbeknownst to them. This is a reminder to check your carbon monoxide detectors!
 
 # Your Task
 Let's simulate a small combustion reaction with methane bubbles. Assume that the surroundings are regular air, which contains a lot of oxygen.
 
 The pipe is ready to dispense bubbles. Try dispensing a methane bubble by editing the code below. Then, click "Run My Code" to test.
 */
//#-hidden-code
import PlaygroundSupport
let lab = LabView(showNextOnMethaneBubbleRelease: true)
PlaygroundPage.current.setLiveView(lab)
//#-end-hidden-code
lab.scene.machine?.createBubble(type: /*#-editable-code type of bubble*/.water/*#-end-editable-code*/)
