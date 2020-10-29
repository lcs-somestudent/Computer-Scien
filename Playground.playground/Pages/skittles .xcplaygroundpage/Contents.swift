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
let preferredWidth = 300
let preferredHeight = 300
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
// attempt to figure out how to code skittles testing

   
for x in stride(from: 0, through: 300, by: 50) {
    
   let skittle = Bool.random()
    
    if skittle == true{
        //draw line
        
        for y in stride(from: 50, through: 250, by: 100) {
            
            canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + 25))
            
            
            
        }
    }else {
        for y in stride(from: 0, through: 200, by: 100) {
            
            canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + 25))
            
       
            
            for y in stride(from: 50, through: 250, by: 100) {
                
                canvas.drawLine(from: Point(x: x + 25, y: y), to: Point(x: x, y: y))
                
                
                
            }
        
            
            for x in stride(from: 0, through: 200, by: 100) {
                
                canvas.drawLine(from: Point(x: x + 25, y: y), to: Point(x: x, y: y))
        
        }
        }
    }
    }


//canvas.drawAxes(withScale: true, by: 50)



//for _ in stride(from: 0, through: 10, by: 1) {
//    let coinFlip = Int.random(in: 0...1)
//    if coinFlip: 1 {
//        canvas.drawRectangle(at: Point(x: 200, y: 200), width: 20, height: 5)
//    } else {
//        canvas.drawRectangle(at: Point(x: 300, y: 200), width: 20, height: 5)
//    }
//}

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
//canvas.drawAxes(withScale: true, by: 50)
