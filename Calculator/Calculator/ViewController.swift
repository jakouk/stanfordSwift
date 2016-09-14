//
//  ViewController.swift
//  Calculator
//
//  Created by jakouk on 2016. 9. 14..
//  Copyright © 2016년 jakouk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func touchDigit(sender: UIButton){
        let digit = sender.currentTitle!
        print("toched \(digit) digit")
        
    }
    
    
}

