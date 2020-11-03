//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 8 * 50
let preferredHeight = 8 * 50
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
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
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */

//draw the six lines to start the design (bottom-left corber)

//bottom left
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 7 * 50), to: Point(x: 1 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 6 * 50), to: Point(x: 2 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 5 * 50), to: Point(x: 3 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 4 * 50), to: Point(x: 4 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 3 * 50), to: Point(x: 5 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 2 * 50), to: Point(x: 6 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 1 * 50), to: Point(x: 7 * 50, y: 0))
//bottom right
canvas.drawLine(from: Point(x: 1 * 50, y: 0), to: Point(x: 8 * 50, y: 1 * 50))
canvas.drawLine(from: Point(x: 2 * 50, y: 0), to: Point(x: 8 * 50, y: 2 * 50))
canvas.drawLine(from: Point(x: 3 * 50, y: 0), to: Point(x: 8 * 50, y: 3 * 50))
canvas.drawLine(from: Point(x: 4 * 50, y: 0), to: Point(x: 8 * 50, y: 4 * 50))
canvas.drawLine(from: Point(x: 5 * 50, y: 0), to: Point(x: 8 * 50, y: 5 * 50))
canvas.drawLine(from: Point(x: 6 * 50, y: 0), to: Point(x: 8 * 50, y: 6 * 50))
canvas.drawLine(from: Point(x: 7 * 50, y: 0), to: Point(x: 8 * 50, y: 7 * 50))
//top left
canvas.drawLine(from: Point(x: 1 * 50, y: 8 * 50), to: Point(x: 0, y: 1 * 50 ))
canvas.drawLine(from: Point(x: 2 * 50, y: 8 * 50), to: Point(x: 0, y: 2 * 50 ))
canvas.drawLine(from: Point(x: 3 * 50, y: 8 * 50), to: Point(x: 0, y: 3 * 50 ))
canvas.drawLine(from: Point(x: 4 * 50, y: 8 * 50), to: Point(x: 0, y: 4 * 50 ))
canvas.drawLine(from: Point(x: 5 * 50, y: 8 * 50), to: Point(x: 0, y: 5 * 50 ))
canvas.drawLine(from: Point(x: 6 * 50, y: 8 * 50), to: Point(x: 0, y: 6 * 50 ))
canvas.drawLine(from: Point(x: 7 * 50, y: 8 * 50), to: Point(x: 0, y: 7 * 50 ))
//top right
canvas.drawLine(from: Point(x: 7 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 1 * 50))
canvas.drawLine(from: Point(x: 6 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 2 * 50))
canvas.drawLine(from: Point(x: 5 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 3 * 50))
canvas.drawLine(from: Point(x: 4 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 4 * 50))
canvas.drawLine(from: Point(x: 3 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 5 * 50))
canvas.drawLine(from: Point(x: 2 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 6 * 50))
canvas.drawLine(from: Point(x: 1 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 7 * 50))

canvas.defaultLineWidth = 10

var star: [Point] = []
star.append(Point(x: 0, y: -50))
star.append(Point(x: 14, y: -20))
star.append(Point(x: 47, y: -15))
star.append(Point(x: 23, y: 7))
star.append(Point(x: 29, y: 40))
star.append(Point(x: 0, y: 25))
star.append(Point(x: -29, y: 40))
star.append(Point(x: -23, y: 7))
star.append(Point(x: -47, y: -15))
star.append(Point(x: -14, y: -20))

canvas.drawCustomShape(with: star)
