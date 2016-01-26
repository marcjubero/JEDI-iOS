//
//  ViewController.swift
//  Calculadora
//
//  Created by mac32 on 26/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var displayHasNumbers:Bool = false
    var operandStack:[Double] = [Double]()
    
    var displayValue:Double {
        // variables conmutades, seters i getters a la amteixa variable
        get {
            let text = displayLabel.text!
            return Double(text)!
        }
        set {
            displayLabel.text = String(newValue)
            // newValue correspon al valor que li assignem
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

    @IBAction func addDigitToDisplay(sender: UIButton) {
        if let digit = sender.currentTitle {
            if displayHasNumbers {
                displayLabel.text = displayLabel.text! + digit
            } else {
                displayLabel.text = "\(digit)"
                displayHasNumbers = true
            }
        }
    }
    
    @IBAction func enter() {
        print(displayValue)
        displayHasNumbers = false
        operandStack.append(displayValue)
        print(operandStack)
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if displayHasNumbers {
            enter()
        }
        
        switch operation {
            case "×":
                performOperation {$0 * $1}
            case "÷":
                performOperation {$1 / $0}
            case "+":
                performOperation {$0 + $1}
            case "−":
                performOperation {$1 - $0}
            default: break
        }
    }
    
    func performOperation(operation:(Double, Double) -> Double) {
        if operandStack.count >= 2 {
            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
        }
    }
}

