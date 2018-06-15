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

    override func viewDidLoad() {
        super.viewDidLoad()
        let longpress = UILongPressGestureRecognizer(target: self, action: #selector(LongPressAction))
        sleepBtn.addGestureRecognizer(longpress)
        
        nightSwitch.addTarget(self, action: #selector(NightSwitchOn(sender:)), for: .touchUpInside)
    }
    
    @objc func LongPressAction(sender: UIGestureRecognizer) {
        if sender.state == .began {
            print("Pressed")
        } else if sender.state == .ended {
            print("Ended")
        }
    }
    
    @objc func NightSwitchOn(sender: UISwitch) {
        print("switch is on")
    }



}
