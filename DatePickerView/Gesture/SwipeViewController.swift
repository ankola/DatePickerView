//
//  ViewController.swift
//  Gesture2
//
//  Created by agile on 3/13/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class SwipeViewController : UIViewController {
    
    @IBOutlet var img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img.isUserInteractionEnabled = true
        
        let swiperight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipegeture))
        swiperight.direction = UISwipeGestureRecognizerDirection.right
        img.addGestureRecognizer(swiperight)
        
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(swipegeture))
        swipeleft.direction = UISwipeGestureRecognizerDirection.left
        img.addGestureRecognizer(swipeleft)
        
        let swipedown = UISwipeGestureRecognizer(target: self, action: #selector(swipegeture))
        swipedown.direction = UISwipeGestureRecognizerDirection.down
        img.addGestureRecognizer(swipedown)
        
        let swipeup = UISwipeGestureRecognizer(target: self, action: #selector(swipegeture))
        swipeup.direction = UISwipeGestureRecognizerDirection.up
        img.addGestureRecognizer(swipeup)
    }
    @objc func swipegeture(sender : UISwipeGestureRecognizer) {
        if let swipegeture = sender as? UISwipeGestureRecognizer
        {
            switch swipegeture.direction {
            case UISwipeGestureRecognizerDirection.right:
                img.image = UIImage(named: "5")
            case UISwipeGestureRecognizerDirection.left:
                img.image = UIImage(named: "6")
            case UISwipeGestureRecognizerDirection.up:
                img.image = UIImage(named: "7")
            case UISwipeGestureRecognizerDirection.down:
                img.image = UIImage(named: "8")
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


