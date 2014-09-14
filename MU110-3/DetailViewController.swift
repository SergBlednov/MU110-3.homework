//
//  DetailViewController.swift
//  MU110-3
//
//  Created by Sergey Blednov on 9/11/14.
//  Copyright (c) 2014 Sergey Blednov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lectureNameLabel: UILabel!
    @IBOutlet weak var lectureDescriptionLabel: UILabel!

    
    var lectureName        : String = "Lecture Name"
    var lectureDescription : String = "Lecture Description"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lectureNameLabel.text = lectureName
        self.lectureDescriptionLabel.text = lectureDescription

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
