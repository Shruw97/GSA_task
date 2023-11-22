//
//  ProfileViewController.swift
//  GSATechWorldTask
//
//  Created by saurabh wattamwar on 22/11/23.
//

import UIKit

class ProfileViewController: UIViewController{
  
    @IBOutlet weak var loggedInUsername: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let loggedInUserName = UserDefaults.standard.object(forKey: "Username") as? String
        loggedInUsername.text = loggedInUserName
        
    }
    

  
}
