//
//  ViewController.swift
//  Dictionary
//
//  Created by Hoang Son on 10/1/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var showText: UITextView!
    
    let database : Dictionary<String,String> = ["username" : "son",
                                                "password" : "123"]
    
    @IBAction func clickLoginButton(_ sender: Any) {
        
    let userName = self.usernameTextField.text
    let localUserName = self.database["username"]
        
    let password = self.passwordTextField.text
    let localPassword = self.database["password"]
        
        guard (userName,password) == (localUserName, localPassword) else {
            showText.text = "Tài khoản hoặc mật khẩu của bạn không đúng"
            return
        }
        
        self.performSegue(withIdentifier: "showMain", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

