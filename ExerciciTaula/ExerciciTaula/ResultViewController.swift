//
//  ResultViewController.swift
//  ExerciciTaula
//
//  Created by Marc Juberó on 28/01/16.
//  Copyright © 2016 HELM S.C.P. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var labelText:String = ""
    var imageName:String = ""
    var description:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = labelText
        resultImage.image = UIImage(named: imageName)
        resultLabel.text = description

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
