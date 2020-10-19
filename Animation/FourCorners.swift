//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class FourCorners: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    var offset = 200
    var y1 = 200
    var y2 = 200
    var x1 = 200
    var x2 = 200
    // Position of circle
    var x: Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 400
        // Slow down the animation
        canvas.framesPerSecond = 15
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        offset -= 400/330
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: offset, y: offset), width: 50, height: 50)
        
    
        canvas.drawEllipse(at: Point(x: 425-offset, y: 425-offset), width: 50, height: 50)
        
        x1 -= 1
        y2 += 1
        canvas.drawEllipse(at: Point(x: x1, y: y2), width: 50, height: 50)
        
        x2 += 1
        y1 -= 1
        canvas.drawEllipse(at: Point(x: x2, y: y1), width: 50, height: 50)
    }
    
}
