//
//  TodayViewController.swift
//  DateWidget
//
//  Created by Isaac Trimble-Pederson on 7/16/16.
//  Copyright © 2016 Cyangrass. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var calendarView: UIView!
    @IBOutlet weak var fullDateLabel: UILabel!
    @IBOutlet weak var calendarMonthLabel: UILabel!
    @IBOutlet weak var calendarDayLabel: UILabel!
    @IBOutlet weak var calendarYearLabel: UILabel!
    
    // Main code logic here.
    func refreshDateAndAppearance() {
        print("Refreshing Date")
        let currentDate = Date()
        let currentCalendar = Calendar.current
        
        // First go for combined label.
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        fullDateLabel.text = dateFormatter.string(from: currentDate)
        
        // Now get the components for the months and year
        let dateComponents = currentCalendar.components([.day, .month, .year], from: currentDate)
        self.calendarMonthLabel.text = dateFormatter.monthSymbols[dateComponents.month! - 1]
        self.calendarDayLabel.text = dateComponents.day!.description
        let datesArray = Array(dateComponents.year!.description.characters).suffix(from: 2)
        self.calendarYearLabel.text = String(datesArray)
        
        // Done!
        
        print("Done!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        calendarView.layer.cornerRadius = 6
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        self.refreshDateAndAppearance()
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
