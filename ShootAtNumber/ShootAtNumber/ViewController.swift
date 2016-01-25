//
//  ViewController.swift
//  ShootAtNumber
//
//  Created by mac32 on 25/1/16.
//  Copyright © 2016 mac32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var shootNumber: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var shootButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundsLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var targetNum:Int = 0
    var rounds:Int = 10
    var score:Int = 0
    var bestScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initSetup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func resetGame(sender: AnyObject) {
        score = 0
        rounds = 10
        result.text = ""
        initSetup()
        
    }
    
    @IBAction func shoot(sender: AnyObject) {
        var diff = abs((targetNum - Int(slider.value)))
            
        print(Int(slider.value))
            
        if diff == 0 {
            result.text = "Perfect!"
            score += 100
        } else if diff < 5 {
            result.text = "Caliente caliente..."
            score += 50
        } else if diff < 10 {
            result.text = "Casi! Pero no..."
            score += 25
        } else {
            result.text = "Keep trying..."
            score += 5
        }
        
        rounds-=1
        
        roundsLabel.text = "Rounds: \(rounds)"
        scoreLabel.text = "Score: \(score)"
        
        if rounds == 0 {
            shootButton.enabled = false;
            resetButton.enabled = true
            showAlertEndGame()
        } else {
            initSetup()
        }
    }
    
    func initSetup() -> Void {
        slider.value = 50
        getRandom()
        shootNumber.text = String(targetNum)
        //result.text = ""
        roundsLabel.text = "Rounds: \(rounds)"
        scoreLabel.text = "Score: \(score)"
        
        shootButton.enabled = true
        resetButton.enabled = false
    }
    
    func getRandom() -> Void {
        targetNum = Int(arc4random_uniform(100) + 1)
    }
    
    func showAlertEndGame() -> Void {
        let alert = UIAlertController(title: "End Game", message: "Your Score: \(score)", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

