//
//  ViewController.swift
//  PKRU Service
//
//  Created by PKRU09 on 7/28/2560 BE.
//  Copyright © 2560 PKRU09. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var myString = ""
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        let strUser = userTextField.text
        let strPassword = passwordTextField.text
        
        if (strUser == "") || (strPassword == "") {
            //Have Space
            alertLabel.text = "Please Fill All Every Blank"
        } else {
        
        //No Space
            
        
        }
        
        
        
        
    }   //login Button
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // view did load
    
    func checkUserAndPass(strUser: String, strPassword: String) -> Void {
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

