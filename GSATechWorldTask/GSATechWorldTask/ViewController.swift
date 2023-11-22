//
//  ViewController.swift
//  GSATechWorldTask
//
//  Created by saurabh wattamwar on 22/11/23.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var userNametf: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.isHidden = true
        
         
    }

    
    @IBAction func clickedToLogin(_ sender: UIButton) {
        var saveName = userNametf.text
     UserDefaults.standard.set(saveName, forKey: "Username")
     
        
    }
    
    

}

