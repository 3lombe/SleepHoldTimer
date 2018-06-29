//
//  ViewController.swift
//  SleepTimer
//
//  Created by Nsonsa Elombe Kisala Jr. on 6/14/18.
//  Copyright © 2018 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit


class TimerViewController: UIViewController {
    
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
            //Make paused time print to table view in SettingsView.
            //After printed to view, reset timer to 00:00:00
        }
    }
    
    @objc func NightSwitchOn(sender: UISwitch) {
        if sender.isOn == true {
            stopwatchLabel.textColor = UIColor.white
            sleepBtn.titleLabel?.textColor = UIColor.black
            sleepBtn.backgroundColor = UIColor.orange
            view.backgroundColor = UIColor.black
            
        } else if sender.isOn == false {
            stopwatchLabel.textColor = UIColor.black
            sleepBtn.titleLabel?.textColor = UIColor.white
            sleepBtn.backgroundColor = UIColor.init(red: 255/255, green: 111/255, blue: 135/255, alpha: 0.75)
            view.backgroundColor = UIColor.white
            
        }
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
