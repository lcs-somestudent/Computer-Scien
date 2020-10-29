//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class skittles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x: Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        // Slow down the animation
        canvas.framesPerSecond = 1
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 300, height: 300)
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

        
    }
    
}
