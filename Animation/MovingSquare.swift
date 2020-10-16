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
class MovingSquare: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    // Vertical position
    var y = 10
    //horizontal
    var x = 10
    //experiment
    var no = 250
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        y += no/230
        x += no/170
        // Draw a square in the middle of the canvas
//        canvas.drawRectangle(at: Point(x: 250, y: y), width: 50, height: 50, anchoredBy: .centre)
        canvas.drawEllipse(at: Point(x: x, y: y), width: 25, height: 50)
        let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
        canvas.textColor = translucentPink
        canvas.drawText(message: "graph of my stocks", at: Point(x: x-1, y: y-1), size: 20, kerning: 1)
        let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 60)
        canvas.textColor = lightBlue
        canvas.drawText(message: "graph of my stocks", at: Point(x: x-3, y: y-3), size: 20, kerning: 1)
        canvas.drawAxes(withScale: true, by: 50)
        
    }
    
}
