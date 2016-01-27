//
//  ViewController.swift
//  ButtonsAutoLayout
//
//  Created by mac32 on 26/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var btnText:String = ""
    var bgColor:UIColor = UIColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    @IBAction func show(sender: UIButton) {
        btnText = sender.currentTitle!
        bgColor = sender.backgroundColor!
        
        performSegueWithIdentifier("progSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let segueId = segue.identifier else {
            return
        }
        
        if(segueId == "progSegue") {
            let destination = segue.destinationViewController as! OrageViewController
        
            destination.labelText = btnText
            destination.bgColor = bgColor
        }
    }
}

