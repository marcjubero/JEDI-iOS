//
//  OrageViewController.swift
//  ButtonsAutoLayout
//
//  Created by mac32 on 26/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class OrageViewController: UIViewController {

    @IBOutlet weak var orangeLabel: UILabel!
    
    var orangeText:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("this is orange!")
        
        orangeLabel.text = orangeText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(sender: UIButton) {
        self.dismissViewControllerAnimated(true) {
            print("dismissed orange")
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
