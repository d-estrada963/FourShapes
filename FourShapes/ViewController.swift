//
//  ViewController.swift
//  FourShapes
//
//

import Cocoa
import Tin


class ViewController: TController {

    //
    // viewWillAppear will be called once, just before the view is placed on screen.
    //
    override func viewWillAppear() {
        view.window?.title = "Four Shapes"
        makeView(width: 525.0, height: 400.0)
        let scene = Scene()
        present(scene: scene)
        scene.view?.showStats = false
    }

}


class Scene: TScene {
    // Variables that are declared here, inside the Scene class
    // will remember their values for the entire run of the program.
    
    var lightOn = false
    var lightOn2 = false
    var lightOn3 = false
    var lightOn4 = false
    
    var litA = false
    var litB = false
    var litC = false
    var litD = false
    
    //
    // The update function is called to draw the view automatically.
    //
    override func update() {
        // background erases the view and sets the entire view to one flat
        // color. If you want a different background color, change it here.
        background(gray: 0.5)
        
        // Remember:
        // Variables declared here, inside the update function,
        // only remember values for one call to the update function.
        //fillColor(gray: 5)
        
        let mouseX = tin.mouseX
        let mouseY = tin.mouseY
        
        let x1 = 25.0
        let x2 = 125.0
        let y1 = 200.0
        let y2 = 300.0
        
        // *************************************************
        // Insert your drawing code here, below this comment
        
        //check mouse position fo rect A
        fillColor(gray: 5)
        if mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2
        {
            lightOn = true
            lightOn4 = false
        }
        else if mouseX < x1 && mouseX > x2 && mouseY < y1 && mouseY > y2 || lightOn4 == true
        {
            lightOn = false
        }
        
        
        strokeColor(gray: -1)
        fillColor(gray: 5)
        if lightOn == true {
            fillColor(red: 1, green: 0, blue: 0, alpha: 1)
            litA = true
        }
        
        //rect A
        rect(x: 25, y: 200, width: 100, height: 100)
      
        
        //mouse position for rect B
        fillColor(gray: 5)
        if mouseX > 150 && mouseX < 250 && mouseY > 200 && mouseY < 300 && litA == true
        {
            lightOn2 = true
            
        }
        
        if mouseX < 150 && mouseX > 250 && mouseY < 200 && mouseY > 300 || lightOn4 == true
        {
            lightOn2 = false
            
        }
        
        strokeColor(gray: -1)
        fillColor(gray: 5)
        if lightOn2 == true
        {
            fillColor(red: 0, green: 1, blue: 0, alpha: 1)
            litB = true
        }
        
        
        rect(x: 150, y: 200, width: 100, height: 100)//rect B
        
        
        //mouse position for rect C
        fillColor(gray: 5)
        if mouseX > 275 && mouseX < 375 && mouseY > 200 && mouseY < 300 && litA == true && litB == true
        {
            lightOn3 = true
            
        }
        
        if mouseX < 275 && mouseX > 375 && mouseY < 200 && mouseY > 300 || lightOn4 == true
        {
            lightOn3 = false
            
        }
        
        strokeColor(gray: -1)
        fillColor(gray: 5)
        if lightOn3 == true
        {
            fillColor(red: 0, green: 0, blue: 1, alpha: 1)
            litC = true
        }
        
       
        rect(x: 275, y: 200, width: 100, height: 100)//rect C
      
        //mouse position for rect d
        fillColor(gray: 5)
        if mouseX > 400 && mouseX < 500 && mouseY > 200 && mouseY < 300 && litA == true && litB == true && litC == true
        {
            lightOn4 = true
            
        }
        
        if mouseX < 400 && mouseX > 500 && mouseY < 200 && mouseY > 300
        {
            lightOn4 = false
            
        }
        
        strokeColor(gray: -1)
        fillColor(gray: 5)
        if lightOn4 == true
        {
            fillColor(red: 1, green: 1, blue: 1, alpha: 1)
            litD = true
            
        }
        
        
        rect(x: 400, y: 200, width: 100, height: 100)//rect D
        
        // Your drawing code should be above this comment.
        // *************************************************
        
        
    }
    
}


