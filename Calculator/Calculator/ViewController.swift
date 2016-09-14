//
//  ViewController.swift
//  Calculator
//
//  Created by jakouk on 2016. 9. 14..
//  Copyright © 2016년 jakouk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleofTyping = false
    
    @IBAction func touchDigit(sender: UIButton){
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleofTyping{
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }else{
            display.text = digit
        }
        userIsInTheMiddleofTyping = true
    }
    
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleofTyping = false
        if let mathematicalSymbol = sender.currentTitle{
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }
    
}

