//
//  ViewController.swift
//  MU110-2
//
//  Created by Sergey Blednov on 9/7/14.
//  Copyright (c) 2014 Sergey Blednov. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    let lectureList = ["Основы синтаксиса Swift", "Cocoa и Swift", "Архитектура правильного swift проекта", "Работа с сетью и Alamofire",
        "Objective C и Swift", "Дебаг, Тестирование и AppStore", "По результатам голосования группы"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        println("Main ViewController did load")
        
        //if(!user.isLoginIn) {
//        let loginController: UIViewController = UIStoryboard(name: "Auth", bundle: nil).instantiateInitialViewController() as UIViewController
//        navigationController!.presentViewController(loginController, animated: true, completion: nil)
        //}
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LectureCell") as UITableViewCell
        cell.textLabel?.text = "Лекция \(indexPath.row + 1)"
        cell.detailTextLabel?.text = lectureList[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "DetailSegue") {
            let detailViewController = segue.destinationViewController as DetailViewController
            var indexPath: NSIndexPath = tableView.indexPathForSelectedRow()!
            detailViewController.title = "Лекция \(indexPath.row + 1)"
            detailViewController.lectureNumber?.text = "Лекция \(indexPath.row + 1)"
            detailViewController.lectureName?.text = lectureList[indexPath.row]
        }
        
    }
    
}

