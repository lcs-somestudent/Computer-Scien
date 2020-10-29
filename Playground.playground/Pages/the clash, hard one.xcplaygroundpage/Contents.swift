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
// COLORS / STARTING CODE NEEDS

canvas.drawShapesWithBorders = false

let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 90, brightness: 60, alpha: 75)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 50, brightness: 0, alpha: 35)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)

// BACKGROUND

canvas.fillColor = deepRed

canvas.drawRectangle(at: Point(x: 50, y: 50), width: 9000, height: 9000
                     ,anchoredBy: AnchorPosition.centre)

// MAKING LOOP

for y in stride(from: 0, through: 400, by: 100) {
    for x in stride(from: 0, through: 400, by: 100) {
        
        // MAKE THE CUSTOM SHAPE WITH VERTICES
        
        var diamond: [Point] = []
        diamond.append(Point(x: x + 50, y: y + 0))
        diamond.append(Point(x: x + 100, y: y + 50))
        diamond.append(Point(x: x + 50, y: y + 100))
        diamond.append(Point(x: x + 0, y: y + 50))
        
        // FILL COLOR WHITE FOR THE DIAMONDS
        
        canvas.fillColor = offWhite
        canvas.drawCustomShape(with: diamond)
        
        // THE CIRCLES INSIDE THE DIAMONDS
        
        canvas.fillColor = deepRed
        canvas.drawEllipse(at: Point(x: x+50, y: y+50), width: 60, height: 60)
        
        // THE CIRCLES TO THE BOTTOM RIGHT OF DIAMONDS
        
        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: x+75, y: y-75), width: 60, height: 60)
        
        // THE CIRCLES TO THE TOP RIGHT OF DIAMONDS
        
        canvas.fillColor = black
        canvas.drawEllipse(at: Point(x: x+125, y: y-125), width: 60, height: 60)
        
      
        x
        y
        
    }
}

// OVER HANG BANNER

canvas.fillColor = deepRed
canvas.drawRectangle(at: Point(x: 200, y: 500), width: 400, height: 200,anchoredBy: AnchorPosition.centre)

// TEXT

canvas.drawText(message: "the clash", at: Point(x: 10, y: 400), size: 50, kerning: 0)

canvas.drawText(message: "€2.25 / friday", at: Point(x: 10, y: 565), size: 9, kerning: 0)
canvas.drawText(message: "december 22 1978", at: Point(x: 10, y: 550), size: 9, kerning: 0)

canvas.drawText(message: "christmas party", at: Point(x: 110, y: 565), size: 9, kerning: 0)
canvas.drawText(message: "with the slits and the innocents", at: Point(x: 110, y: 550), size: 9, kerning: 0)

canvas.drawText(message: "friars aylesbury at maxwell hall", at: Point(x: 255, y: 565), size: 9, kerning: 0)
canvas.drawText(message: "aylesbury, buckinghamshire, england", at: Point(x: 255, y: 550), size: 9, kerning: 0)
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
