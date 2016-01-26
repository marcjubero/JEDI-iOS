//
//  ViewController.swift
//  ButtonsAutoLayout
//
//  Created by mac32 on 26/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // "guard" only in Swift2 ;; comprova que realment es pugui fer la acció, sino executa else
        guard let segueIdentifier = segue.identifier else {
            return
        }
        print(segueIdentifier)
        
        switch segueIdentifier {
            case "showGreen":
                let destination = segue.destinationViewController as! GreenViewController
                destination.greenText = "Hello! This is Green"
            case "showOrange":
                let destination = segue.destinationViewController as! OrageViewController
                destination.orangeText = "Hello! This is Orange"
            case "showBlue":
                let destination = segue.destinationViewController as! BlueViewController
                destination.blueText = "Hello! This is Blue"
            default:break
        }
    }


}

