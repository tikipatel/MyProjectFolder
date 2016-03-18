//
//  ViewController.swift
//  MyGitProject
//
//  Created by Pratikbhai Patel on 3/17/16.
//  Copyright © 2016 Pratikbhai Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var itemsArray: [String] = ["Burger", "Pizza", "Hot dog", "Butter Chicken"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            // some animation
            }) { (finished) -> Void in
                self.itemsArray.append("Animation")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonTapped(sender: AnyObject) {
        if let newItem = textField.text where newItem.characters.count > 0 {
            itemsArray.append(newItem)
            textField.text = ""
            tableView.reloadData()
        } else {
            
        }
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var myCell = tableView.dequeueReusableCellWithIdentifier("ItemCell")
        if myCell == nil {
            myCell = UITableViewCell()
        }
        myCell!.textLabel?.text = itemsArray[indexPath.row]
        return myCell!
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            let rowNumber = indexPath.row
            itemsArray.removeAtIndex(rowNumber)
            tableView.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        let detailVC = storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailViewController
        detailVC.detailString = itemsArray[indexPath.row]
        presentViewController(detailVC, animated: true, completion: nil)

    }
}

