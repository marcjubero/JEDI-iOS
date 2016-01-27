//
//  ViewController.swift
//  PassingParameters
//
//  Created by Marc Juberó on 27/01/16.
//  Copyright © 2016 Marc Juberó. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var textFieldValue:String {
        get {
            let text = textField.text!
            return text
        }
        set {
            textField.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let segueId = segue.identifier else {
            return
        }
        
        if segueId == "showResults" {
            let destination = segue.destinationViewController as! ResultSceneController
            destination.text = textFieldValue
        }
    }
}

