//
//  SettingsDetailViewController.swift
//  1MinWorkouts
//
//  Created by Justin Spirent on 1/14/15.
//  Copyright (c) 2015 Good Enough LLC. All rights reserved.
//

import UIKit

class SettingsDetailViewController: UIViewController , UITableViewDataSource  {
    
    var settingsSet = GlobalVars.settingsSet
    
    @IBOutlet var startDayReminderView: UIView!
    
    @IBOutlet var autoEndDayView: UIView!
    
    @IBOutlet var aboutView: UIView!
    
    @IBOutlet var startDayPicker: UIDatePicker!
    
    @IBOutlet var autoEndDayPicker: UIDatePicker!
    
    let settingsStartDay = [
        ("Monday - Friday"),
        ("Saturday and Sunday")
    ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return settingsStartDay.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
           let (settingsTitle) = settingsStartDay[indexPath.row]
            cell.textLabel?.text = settingsTitle
        
        return cell
    }

//    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
//        cell.accessoryType = .None
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if GlobalVars.settingsSet == "Start Day Reminder"{
            startDayReminderView.hidden = false
            autoEndDayView.hidden = true
            aboutView.hidden = true
            navigationItem.title = "Start Day Reminder"
        }else if GlobalVars.settingsSet == "Auto End Day"{
            autoEndDayView.hidden = false
            startDayReminderView.hidden = true
            aboutView.hidden = true
            navigationItem.title = "Auto End Day"
        }
        else{
            aboutView.hidden = false
            startDayReminderView.hidden = true
            autoEndDayView.hidden = true
            navigationItem.title = "About"
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}