//
//  ViewController.swift
//  date picker22
//
//  Created by D7703_08 on 2018. 4. 11..
//  Copyright © 2018년 D7703_08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var picker1: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var NTP: UILabel!
    var myTimer = Timer()
    var count = 0
    let interval = 1.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTimer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @IBAction func picker1(_ sender: Any) {
        print("change Date Picker")
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        label.text = formatter.string(from: picker1.date)
        
    }
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EEE"
        NTP.text = formatter.string(from: date as Date)
    }
    
}
