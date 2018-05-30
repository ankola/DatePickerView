//
//  Date Picker view.swift
//  Gesture
//
//  Created by agile on 3/16/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class Date_Picker_view: UIViewController, UIPickerViewDelegate {

    @IBOutlet var datepicker: UIDatePicker!
    @IBOutlet var Dateobjpicker: UILabel!
    @IBOutlet var objPickerlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    let strTime = "1990-07-27"
//    let formatter = DateFormatter()
//    formatter.dateFormat = "yyyy-MM-dd"
//    let date = formatter.date(from: strTime)
//    print(date)
//    datepicker.minimumDate = date
//    datepicker.date = date!

    @IBAction func objdatepicker(_ sender: UIDatePicker) {
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "DD-MM-yyyy HH:mm a"
        Dateobjpicker.text = (dateFormatter.string(from: datepicker.date))
        print(dateFormatter.string(from: datepicker.date))
        
    }
    @IBOutlet var objpicker: UIPickerView!
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
