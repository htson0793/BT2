//
//  MainViewController.swift
//  Dictionary
//
//  Created by Hoang Son on 10/1/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var findWord: UITextView!
    
   
    @IBOutlet weak var showText: UITextView!
    

    let database:Dictionary<String,String> = ["Open" : "Mở","Close" : "Đóng" ]
    
    
    @IBAction func onButtonClick(_ sender: Any) {
        
        let findWordAC = self.findWord.text
        for i in database{
            if findWordAC == i.key {
                showText.text = i.value
                return
            }
            else {
                showText.text = "Không có trong từ điển"
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

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
