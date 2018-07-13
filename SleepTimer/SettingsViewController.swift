//
//  SettingsViewController.swift
//  SleepTimer
//
//  Created by Nsonsa Elombe Kisala Jr. on 6/16/18.
//  Copyright © 2018 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var timeStampLabel: UILabel!
    @IBOutlet weak var dataLogTableView: UITableView!
    
    var timeStampString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeStampLabel.text = timeStampString
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "Cell")
        
        cell.backgroundColor = self.view.backgroundColor
        cell.textLabel?.text = "Sleep Log"
        cell.detailTextLabel?.text = "00:00:00"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
}
