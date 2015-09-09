//
//  ViewController.swift
//  randomNumber
//
//  Created by Chris Howie on 9/7/15.
//  Copyright © 2015 com.chrishowie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNumber: UITextField!
    
    @IBOutlet var randomNumber: UILabel!
    
    @IBAction func generateNumber(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == userNumber.text {
            randomNumber.text = "You got it right!"
        } else {
            randomNumber.text = "Wrong! It was a " + diceRoll
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


}

