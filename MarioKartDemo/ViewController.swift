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
    
    
    
}

