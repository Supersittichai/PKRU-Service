//
//  SignUpViewController.swift
//  PKRU Service
//
//  Created by PKRU09 on 7/28/2560 BE.
//  Copyright © 2560 PKRU09. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //Eplicit
    let strBlankAlert = "Please Fill All Every Blank"
    let strFontPHP = "http://androidthai.in.th/pkru/addDataPeem.php?isAdd=true&Name="
    
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        
        //Get Value From TextField
        
        let strName: String = nameTextField.text!
        let strUser: String = userTextField.text!
        let strPassword: String = passwordTextField.text!
        
        //show Log
        print("strName ==> \(strName)")
        print("strUser ==> \(strUser)")
        print("strPassword ==> \(strPassword)")
        
        //check space
        if (strName == "") || (strUser == "") || (strPassword == "") {
            //Have space
            alertLabel.text = strBlankAlert
            
        }   else {
            //No space
            uploadToServer(strName: strName, strUser: strUser, strPassword: strPassword)
        
        }
        
        
        
        
    }   //SaveButton
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }   //viewdidload
    
    func uploadToServer(strName: String, strUser: String, strPassword: String) -> Void {
        
        let strPHP: String = strFontPHP + "\(strName)&User=\(strUser)&Password=\(strPassword)"
        print("strPHP ==> \(strPHP)")
        
        let myURL = URL(string: strPHP)
        let request = NSMutableURLRequest(url: myURL!)
        let task = URLSession.shared.dataTask(with: request as URLRequest){
        
            data, response, error in
            
            if error != nil {
            
                print("Error ==> \(String(describing: error))")
            
            } else {
            
                if let unwrappedData = data {
                
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    let strResult = dataString as Any
                    print("strResult ==> \(strResult)")
                    
                    let myResult: String = strResult as! String
                    print("myResult ==> \(myResult)")
                
                }   //if
            
            
            }   //if
        
        }   //task
        
        task.resume()
        
        
        
        
        
        
        
    }   //upload to server
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
