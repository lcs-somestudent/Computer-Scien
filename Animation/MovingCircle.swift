//
//  MovingCircle.swift
//  Animation
//
//  Created by Russell Gordon on 2020-11-06.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics


// A class is just a container that stores:
//  - state (information / data)
//  - behaviours (methods / functions that make something happen)
class MovingCircle {
    
    // 1. Properties (the state)
    var x: Int
    var y: Int
    var dx: Int
    var dy: Int
    var diameter: Int
    var drawCircle: Bool
    
    // Computed property
    var radius: Int {
        return self.diameter / 2
    }
    
    // 2. Initializer (initialize, or "set up" the properties with a first value)
    init(x: Int, y: Int, dx: Int, dy: Int, diameter: Int, drawCircle: Bool) {
        
        // "self" refers to the properties from THIS class
        // light blue refers to the property (self)
        // black refers to the local parameter value
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.diameter = diameter
        self.drawCircle = drawCircle
    }
    
    // 3. Methods (make things happen)
    
    func update(on canvas: Canvas) {
        
        // Move the circle
        x += dx
        y += dy
        
        // Set circle colours
        canvas.drawShapesWithFill = false
        canvas.fillColor = Color.white

        // Draw the circle
        if drawCircle == true {
            canvas.drawEllipse(at: Point(x: x, y: y),
                               width: diameter,
                               height: diameter)

        }

        // Bounce first circle at edges
        if x >= canvas.width {
            dx = -1
        } else if x <= 0 {
            dx = 1
        } else if y >= canvas.height {
            dy = -1
        } else if y <= 0 {
            dy = +1
        }

        
    }
    
    func drawLineWhenOverlappingWith(other: MovingCircle,
                                     on canvas: Canvas) {
        
        // Find the distance between the circles
        let a = Double(self.x - other.x)
        let b = Double(self.y - other.y)
        let d = sqrt(a*a + b*b)
//        print("Distance between circles is \(d)")
        
        // Set the alpha based on distance between circles
        let alpha = map(value: d,
                        fromLower: 50,
                        fromUpper: Double(self.radius + other.radius),
                        toLower: 0, toUpper: 30)
        
        // Set line color
        canvas.lineColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: Float(alpha))

        // When the circles overlap, draw a line between them
        // (when the distance between the circles is less than the sum of the radii)
        if d < Double(self.radius + other.radius) {
            canvas.drawLine(from: Point(x: self.x, y: self.y),
                            to: Point(x: other.x, y: other.y))
        }

    }
    
}
