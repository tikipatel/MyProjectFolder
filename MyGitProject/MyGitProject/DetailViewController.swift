//
//  DetailViewController.swift
//  MyGitProject
//
//  Created by Pratikbhai Patel on 3/17/16.
//  Copyright © 2016 Pratikbhai Patel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailString: String?
    
    @IBOutlet weak var detailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let deetzString = detailString {
            self.detailLabel.text = deetzString
        } else {
            self.detailLabel.text = "No Data Provided"
        }
    }
    @IBAction func goBackAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
