//
//  ViewController.swift
//  MU110-2
//
//  Created by Sergey Blednov on 9/7/14.
//  Copyright (c) 2014 Sergey Blednov. All rights reserved.
//

import UIKit
import Alamofire

class TableViewController: UITableViewController {
    
    var items: NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Alamofire.request(.GET, "http://weekly.master-up.net/api/v1/lecture/list/")
            .responseJSON() { (request, response, JSON, error) in
    
                self.items = JSON as NSArray
                self.tableView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let count = items?.count {
            return count
        }
        return 0;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LectureCell") as UITableViewCell
        if let item = self.items {
            let lecture = item[indexPath.row] as NSDictionary
            cell.textLabel?.text = "Лекция \(indexPath.row + 1)"
            cell.detailTextLabel?.text = lecture["name"] as NSString
        }
        

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "DetailSegue") {
            let detailViewController = segue.destinationViewController as DetailViewController
            var indexPath: NSIndexPath = tableView.indexPathForSelectedRow()!
            detailViewController.title = "Лекция \(indexPath.row + 1)"
            if let item = self.items {
                let detailedLecture = item[indexPath.row] as NSDictionary
                detailViewController.lectureName = detailedLecture["name"] as NSString
                detailViewController.lectureDescription = detailedLecture["description"] as NSString
            }
        }
        
    }
    
}

