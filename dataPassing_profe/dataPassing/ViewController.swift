//
//  ViewController.swift
//  dataPassing
//
//  Created by Miguel Berrocal Gómez on 27/01/16.
//  Copyright © 2016 HELM S.C.P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cosesTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // canvi a programaticSegues, transicions programades
    override func viewDidAppear(animated: Bool) {
        performSegueWithIdentifier("programaticSegue", sender: self)
        // en el moment en el que hagi acabat de cearregar la pantalla, activarà la segue.
        // programaticSegue va de ViewController a ViewController
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "showNext" {
                if let destination = segue.destinationViewController as? ITellYouViewController {
                    destination.elText = cosesTextField.text
                }
            }
        }
    }


}

