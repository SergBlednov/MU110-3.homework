//
//  AuthViewController.swift
//  MU110-2
//
//  Created by Sergey Blednov on 9/7/14.
//  Copyright (c) 2014 Sergey Blednov. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func registerButtonTouched(sender: UIButton) {
        
               //        if(!user.isLoginIn) {
        let loginController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as UIViewController
        navigationController!.presentViewController(loginController, animated: true, completion: nil)
        //        }
    }
}
