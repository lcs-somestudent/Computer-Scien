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
let preferredWidth = 600
let preferredHeight = 700
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

// Replace this comment with your first comment – what is the goal of the code you're about to write?

canvas.defaultLineWidth = 6

canvas.drawLine(from: Point(x: 1, y: 600), to: Point(x: 350, y: 550))
canvas.drawLine(from: Point(x: 1, y: 575), to: Point(x: 325, y: 525))
//draw ellipse

//fill colors
canvas.drawShapesWithFill
//draw without fill
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 5
//draw custom polygon
canvas.defaultLineWidth = 3

//left triangle

var vertices: [Point] = [] //empty list of vertices
vertices.append(Point(x: 175, y: 350))
vertices.append(Point(x: 375, y: 575))
vertices.append(Point(x: 395, y: 400))
vertices.append(Point(x: 175, y: 350))


canvas.drawCustomShape(with: vertices)

//right triangle



var vertices2: [Point] = []
vertices2.append(Point(x: 405, y: 400))
vertices2.append(Point(x: 500,y: 350))
vertices2.append(Point(x: 383, y: 571))
vertices2.append(Point(x: 405, y: 400))

canvas.drawCustomShape(with: vertices2)

//bottom triangle

var vertices3: [Point] = []
vertices3.append(Point(x: 180, y: 340))
vertices3.append(Point(x: 496, y: 340))
vertices3.append(Point(x: 400, y: 390))
vertices3.append(Point(x: 180, y: 340))


canvas.drawCustomShape(with: vertices3)

canvas.drawLine(from: Point(x: 387, y: 565), to: Point(x: 700, y: 499))
canvas.drawLine(from: Point(x: 393, y: 550), to: Point(x: 700, y: 474))

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
