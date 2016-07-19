//
//  ViewController.swift
//  Date
//
//  Created by Isaac Trimble-Pederson on 7/16/16.
//  Copyright © 2016 Cyangrass. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gotoPortfolio(_ sender: AnyObject) {
        let portfolioURL = URL(string: "http://cyanisaac.cyangrass.com/")!
        UIApplication.shared().open(portfolioURL, options: [:], completionHandler: nil)
    }
    
    @IBAction func gotoCyangrassWebsite(_ sender: AnyObject) {
        let cyangrassURL = URL(string: "http://cyangrass.com/")!
        UIApplication.shared().open(cyangrassURL, options: [:], completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }


}

