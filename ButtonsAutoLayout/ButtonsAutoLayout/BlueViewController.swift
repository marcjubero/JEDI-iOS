//
//  BlueViewController.swift
//  ButtonsAutoLayout
//
//  Created by mac32 on 26/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var blueLabel: UILabel!
    
    var blueText:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueLabel.text = blueText
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(sender: UIButton) {
        self.dismissViewControllerAnimated(true){
            print("dismissed blue")
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
