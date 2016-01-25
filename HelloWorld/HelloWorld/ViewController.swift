//
//  ViewController.swift
//  HelloWorld
//
//  Created by mac32 on 25/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    let piropos:[String] = ["asd!", "asdf!", "asdfg!", "asdfgh!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // les coses es recomanable fer-les aqui, així assegurem que tot ha carregat.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(sender: AnyObject) {
        print("Hello!")
        
        let count:Int = piropos.count;
        
        helloLabel.text = piropos[Int(arc4random_uniform(UInt32(count)))]
        self.view.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    }
}

