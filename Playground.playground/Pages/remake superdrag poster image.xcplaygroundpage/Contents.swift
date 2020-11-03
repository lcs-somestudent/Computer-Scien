//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */



/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
// COLORS
let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 100)
let offWhite = Color(hue: 85, saturation: 8, brightness: 88, alpha: 100)
let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

canvas.fillColor = lightBlue
canvas.drawRectangle(at: Point(x: 200, y: 300), width: 400, height: 600, anchoredBy: AnchorPosition.centre)
canvas.drawShapesWithFill = false

canvas.defaultBorderWidth = 11
canvas.borderColor = offWhite
for step in stride(from: 390, through: 45, by: -47) {
    
    canvas.drawEllipse(at: Point(x: 200, y: 400), width: step, height: step)
    
}
canvas.fillColor = offWhite
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 15, height: 15)

canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = translucentPink
canvas.defaultBorderWidth = 11
for step in stride(from: 390, through: 50, by: -47) {
    
    canvas.drawEllipse(at: Point(x: 200, y: 500), width: step, height: step)
    
}
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = translucentPink
canvas.drawEllipse(at: Point(x: 200, y: 500), width: 15, height: 15)


canvas.drawAxes(withScale: true, by: 50)
