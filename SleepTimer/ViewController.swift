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
    }
    
    @objc func LongPressAction() {
   
    }



}
