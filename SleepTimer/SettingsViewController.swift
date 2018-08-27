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
    @IBOutlet weak var dataLogTableView: UITableView!
    
    var timeStampString = ""
    var svLaps : [String] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        svLaps.insert(timeStampString, at: 0)
        dataLogTableView.reloadData()
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "Cell")
        
        cell.backgroundColor = self.view.backgroundColor
        cell.textLabel?.text = "Sleep Log \(svLaps.count-indexPath.row)"
        cell.detailTextLabel?.text = svLaps[indexPath.row]
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return svLaps.count
    }
    
    // Pass data to TimerVC
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationView: TimerViewController = segue.destination as! TimerViewController
//    }
    
}
