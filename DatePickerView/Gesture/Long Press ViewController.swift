//
//  Long Press ViewController.swift
//  Gesture
//
//  Created by agile on 3/13/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class Long_Press_ViewController: UIViewController {

    @IBOutlet var imglong: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imglong.isUserInteractionEnabled = true
        
        let longpress = UILongPressGestureRecognizer(target: self, action: #selector(self.lngpr))
        imglong.addGestureRecognizer(longpress)
        
    }
    
   
    @objc func lngpr() {
        if imglong.image == UIImage(named: "6"){
            imglong.image = UIImage(named: "5")
        }
        else{
        imglong.image = UIImage(named: "6")
             }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
