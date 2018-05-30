//
//  pViewController.swift
//  Gesture
//
//  Created by agile on 3/14/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class pViewController: UIViewController {

    @IBOutlet var objima: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objima.isUserInteractionEnabled = true
        
        let pinchr = UIPinchGestureRecognizer(target: self, action: #selector(self.fpinch))
        objima.addGestureRecognizer(pinchr)

        // Do any additional setup after loading the view.
    }
    @objc func fpinch(sender : UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1.0
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
