//
//  GreenViewController.swift
//  ButtonsAutoLayout
//
//  Created by mac32 on 26/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var greenLabel: UILabel!

    var greenText:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HI, HELLO!")
        
        greenLabel.text = greenText
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) {
            print("dismissed green")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
