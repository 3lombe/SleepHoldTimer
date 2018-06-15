//
//  ViewController.swift
//  SleepTimer
//
//  Created by Nsonsa Elombe Kisala Jr. on 6/14/18.
//  Copyright © 2018 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sleepBtn: UIButton!
    @IBOutlet weak var nightSwitch: UISwitch!
    @IBOutlet weak var stopwatchLabel: UILabel!
    
    
    var timer = Timer()
    var minutes : Int = 0
    var seconds : Int = 0
    var fractions : Int = 0
    
    let startStopwatch : Bool = true
    var stopwatchString = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let longpress = UILongPressGestureRecognizer(target: self, action: #selector(LongPressAction))
        sleepBtn.addGestureRecognizer(longpress)
        
        nightSwitch.addTarget(self, action: #selector(NightSwitchOn(sender:)), for: .touchUpInside)
    }
    
    @objc func LongPressAction(sender: UIGestureRecognizer) {
        if sender.state == .began {
            print("Pressed")
            
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateStopwatch), userInfo: nil, repeats: true)
            
            
        } else if sender.state == .ended {
            print("Ended")
            
            timer.invalidate()
            
        }
    }
    
    @objc func NightSwitchOn(sender: UISwitch) {
        print("switch is on")
    }
    
    @objc func updateStopwatch() {
        fractions += 1
        if fractions == 100 {
            seconds += 1
            fractions = 0
        }
        
        if seconds == 60 {
            minutes += 1
            seconds = 0
        }
        let fractionsString = fractions > 9 ? "\(fractions)" : "0\(fractions)"
        let secondsString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
        let minutesString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        let stopwatchString = "\(minutesString):\(secondsString):\(fractionsString)"
        stopwatchLabel.text = String(stopwatchString)
    }



}
