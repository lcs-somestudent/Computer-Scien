//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class Spiral: NSObject, Sketchable {
    

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    

    // Keep track of the prior point
    var lastPoint1: Point
    var lastPoint2: Point
    var lastPoint3: Point
    var lastPoint4: Point
    var lastPoint5: Point
    var lastPoint6: Point
    var lastPoint7: Point
    var lastPoint8: Point

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1500, height: 1500)
                

        // Set the starting position in the middle of the canvas
        lastPoint1 = Point(x: 0, y: 0)
        lastPoint2 = Point(x: 0, y: 0)
        lastPoint3 = Point(x: 0, y: 0)
        lastPoint4 = Point(x: 0, y: 0)
        lastPoint5 = Point(x: 0, y: 0)
        lastPoint6 = Point(x: 0, y: 0)
        lastPoint7 = Point(x: 0, y: 0)
        lastPoint8 = Point(x: 0, y: 0)
        
        // Speed
        canvas.framesPerSecond = 80
    }
    

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        

        // What frame are we on?
//        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 1
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
        

        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 0)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            

            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint1, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint1 = nextPoint

        }
        
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 45)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint2, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint2 = nextPoint

        }
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 90)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint3, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint3 = nextPoint

        }
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 135)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint4, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint4 = nextPoint

        }
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 180)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            

            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint5, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint5 = nextPoint

        }
        
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 225)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint6, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint6 = nextPoint

        }
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 270)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint7, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint7 = nextPoint

        }
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 315)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint8, to: nextPoint)
            

            // Set the "new" last point, now that the line is drawn
            lastPoint8 = nextPoint

        }
        

    }
    

}
