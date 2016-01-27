//
//  ResultSceneController.swift
//  PassingParameters
//
//  Created by Marc Juberó on 27/01/16.
//  Copyright © 2016 Marc Juberó. All rights reserved.
//

import UIKit

class ResultSceneController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    var text:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if text == nil {
            textLabel.text = ":("
        } else {
            textLabel.text = text
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) {
            print("dismissed")
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
