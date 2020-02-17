//
//  ViewController.swift
//  MarioKartDemo
//
//  Created by EatMoreOranges on 2/12/20.
//  Copyright © 2020 EatMoreOranges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        //let location = sender.location(in: view)
        let location = sender.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")
        
//        Each gesture recognizer knows the view it's attached to. We can ask the gesture recognizer (sender) for it's view in order to access the specific view that was panned (i.e. which kart image view).
//        💡 We're forcefully unwrapping the view property of the sender using a ! to avoid having to continuously account for it as an optional value. In our case, it's safe to do so since we can be assured that anyone calling this method will have a view attached and not be nil.

        let kartView = sender.view!
        kartView.center = location
        
    }
    

    @IBAction func didPinchKart(_ sender: UIPinchGestureRecognizer) {
        //    How do you pinch on the simulator?
        //    • Hold down the option key and you'll see two gray circles appear. Those represent the user's fingers.
        //    • Move the cursor while continuing to hold the option key until the circles are close together.
        //    Now, Additionally hold down the shift key and move the two circles over the object you want to pinch.
        //    • Release the shift key, while continuing to hold the option key, click on the object you want to pan and (while continuing to hold the click) move the cursor to pinch in and out.
        let scale = sender.scale
        print("scale:\(scale)")
        
        let KartView = sender.view!
        KartView.transform = CGAffineTransform(scaleX: scale, y: scale)
        
    }
    
    
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        
        let rotation = sender.rotation
        print("rotation: \(rotation)")
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    
    }
    
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        print("Double tap recognized")
        
        let kartView = sender.view!
//        kartView.center.x += 75
              
        //       1) Set up the beginning state of your view before calling the animation method. (In our case this is just where the kart already is so we don't need to specify further)
        //       2) Call the animation method, inputting the time duration (in seconds) you want the animation to take.
        //       3) Use tab to access the various input values of the animation method.
        //       4) Press return when the () -> Void closure is highlighted to expand it and reveal it's body.
        //       5) Enter the end values for the view you're animating
        //       6) In the body of the closure, specify the end state of your view animation. (In our case, this is the position we want the kart finish at)
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 500
        }
                
        
    }
    
    
    
    
    
}


