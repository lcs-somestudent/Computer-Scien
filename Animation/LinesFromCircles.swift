//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LineFromCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Make a small and a large circle
    var small: MovingCircle
    var large: MovingCircle
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set up the small and large circle
        small = MovingCircle(x: Int.random(in: 0...canvas.width),
                             y: Int.random(in: 0...canvas.height),
                             dx: 1,
                             dy: -1,
                             diameter: 50)

        large = MovingCircle(x: Int.random(in: 0...canvas.width),
                             y: Int.random(in: 0...canvas.height),
                             dx: 1,
                             dy: -1,
                             diameter: 200)
        
        canvas.drawShapesWithBorders = true
        canvas.borderColor = Color.black
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        // Draw white background
        canvas.drawShapesWithFill = true
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        canvas.defaultBorderWidth = 7
        
        // Update each circle's position on the canvas
        small.update(on: canvas)
        large.update(on: canvas)

        // Find the distance between the circles
        let a = Double(small.x - large.x)
        let b = Double(small.y - small.y)
        let d = sqrt(a*a + b*b)
        print("Distance between circles is \(d)")

        // When the circles overlap, draw a line between them
        // (when the distance between the circles is less than the sum of the radii)
        if d < Double(small.radius + large.radius) {
            canvas.drawLine(from: Point(x: small.x, y: small.y),
                            to: Point(x: large.x, y: large.y))
        }
    }
    
    
    
}
