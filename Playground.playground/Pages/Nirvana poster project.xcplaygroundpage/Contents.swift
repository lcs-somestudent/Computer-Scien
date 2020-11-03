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
// COLORS AND STARTING CODE

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.defaultLineWidth = 5

let yellow2 = Color(hue: 56, saturation: 70, brightness: 40, alpha: 10)
let pink = Color(hue: 305, saturation: 89, brightness: 59, alpha: 100)
let black = Color(hue: 17, saturation: 14, brightness: 13, alpha: 100)
let yellow = Color(hue: 60, saturation: 100, brightness: 62, alpha: 100)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)

canvas.borderColor = yellow

// BACKGROUND

canvas.fillColor = black

canvas.drawRectangle(at: Point(x: 50, y: 50), width: 9000, height: 9000
                     ,anchoredBy: AnchorPosition.centre)

// MAIN DESIGN

for y in stride(from: 0, through: 400, by: 100) {
    for x in stride(from: 0, through: 400, by: 100) {
        
        canvas.fillColor = yellow2
        canvas.drawShapesWithFill = true
        
        var star: [Point] = []
        star.append(Point(x: x + 0, y: y - 50))
        star.append(Point(x: x + 14, y: y - 20))
        star.append(Point(x: x + 47, y: y - 15))
        star.append(Point(x: x + 23, y: y + 7))
        star.append(Point(x: x + 29, y: y + 40))
        star.append(Point(x: x + 0, y: y + 25))
        star.append(Point(x: x - 29, y: y + 40))
        star.append(Point(x: x - 23, y: y + 7))
        star.append(Point(x: x - 47, y: y - 15))
        star.append(Point(x: x - 14, y: y - 20))

        canvas.drawCustomShape(with: star)

        
        
    }
    
}


// LOOP AND DESIGN

for step in stride(from: 500, through: 200, by: -100) {
    
    canvas.drawShapesWithBorders = true
    canvas.drawShapesWithFill = false
    canvas.drawEllipse(at: Point(x: 200, y: 200), width: step, height: step)
    
}

// LOOP AND DESING WHITE OUTLINE

for step in stride(from: 500, through: 200, by: -110) {
    
    canvas.borderColor = offWhite
    canvas.drawEllipse(at: Point(x: 200, y: 200), width: step, height: step)
    
}

// LOOP AND DESING PINK OUTLINE

for step in stride(from: 500, through: 200, by: -120) {
    
    canvas.borderColor = pink
    canvas.drawEllipse(at: Point(x: 200, y: 200), width: step, height: step)
    
}

// LOGO FEATURES

// RIGHT EYE
canvas.lineColor = yellow
canvas.drawLine(from: Point(x: 140, y: 240), to: Point(x: 160, y: 220))
canvas.drawLine(from: Point(x: 160, y: 240), to: Point(x: 140, y: 220))

// LEFT EYE
canvas.drawLine(from: Point(x: 240, y: 240), to: Point(x: 260 , y: 220))
canvas.drawLine(from: Point(x: 260, y: 240), to: Point(x: 240, y: 220))

// MOUTH FROM TOP RIGHT TO LEFT
canvas.drawLine(from: Point(x: 270, y: 190), to: Point(x: 280, y: 185))
canvas.drawLine(from: Point(x: 275, y: 187), to: Point(x: 250, y: 150))
canvas.drawLine(from: Point(x: 250, y: 150), to: Point(x: 205, y: 140))
canvas.drawLine(from: Point(x: 205, y: 140), to: Point(x: 180, y: 150))
canvas.drawLine(from: Point(x: 180, y: 150), to: Point(x: 150, y: 165))
canvas.drawLine(from: Point(x: 150, y: 165), to: Point(x: 130, y: 185))
canvas.drawLine(from: Point(x: 120, y: 185), to: Point(x: 135, y: 190))

// TONGUE
canvas.defaultBorderWidth = 5
canvas.borderColor = yellow
canvas.drawEllipse(at: Point(x: 260, y: 150), width: 25, height: 30)
canvas.drawLine(from: Point(x: 250, y: 150), to: Point(x: 265, y: 145))

// TEXT
canvas.textColor = yellow
canvas.drawShapesWithFill = true
canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 200, y: 500), width: 400, height: 200,anchoredBy: AnchorPosition.centre)
canvas.drawText(message: "NIRVANA", at: Point(x: 10, y: 400), size: 35, kerning: 5)
canvas.drawText(message: "december 1993", at: Point(x: 10, y: 580), size: 10, kerning: 0)
canvas.drawText(message: "20th anniversary", at: Point(x: 10, y: 565), size: 10, kerning: 0)
canvas.drawText(message: "washington, Seattle", at: Point(x: 120, y: 580), size: 10, kerning: 0)
canvas.drawText(message: "pier 48", at: Point(x: 120, y: 565), size: 10, kerning: 0)
canvas.drawText(message: "with", at: Point(x: 335, y: 580), size: 10, kerning: 0)
canvas.drawText(message: "kurt cobain", at: Point(x: 335, y: 565), size: 10, kerning: 0)

// BANNER LOGO
canvas.drawEllipse(at: Point(x: 262, y: 510), width: 70, height: 70)
canvas.drawLine(from: Point(x: 255, y: 525), to: Point(x: 250, y: 520))
canvas.drawLine(from: Point(x: 250, y: 525), to: Point(x: 255, y: 520))

canvas.drawLine(from: Point(x: 255 + 25, y: 525), to: Point(x: 250 + 25, y: 520))
canvas.drawLine(from: Point(x: 250 + 25, y: 525), to: Point(x: 255 + 25, y: 520))

canvas.drawEllipse(at: Point(x: 277, y: 497), width: 10, height: 10)

canvas.drawLine(from: Point(x: 238, y: 501), to: Point(x: 243, y: 509))
canvas.drawLine(from: Point(x: 240, y: 505), to: Point(x: 265, y: 498))
canvas.drawLine(from: Point(x: 265, y: 498), to: Point(x: 275, y: 500))
canvas.drawLine(from: Point(x: 275, y: 500), to: Point(x: 285, y: 504))
canvas.drawLine(from: Point(x: 281, y: 507), to: Point(x: 285, y: 500))

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
