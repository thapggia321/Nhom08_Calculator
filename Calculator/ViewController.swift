//
//Users/phuc/Desktop/Calculator/Calculator.xcodeproj//  ViewController.swift
//  Calculator
//
//  Created by Phuc on 4/19/18.
//  Copyright © 2018 Phuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnscreen : Double = 0;
    var previousNumber : Double = 0;
    var performingMath = false
    var operation = 0;
   
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton)
    {
     if performingMath == true
     {
        label.text = String (sender.tag-1)
        numberOnscreen = Double(label.text!)!
    performingMath = false
     }
     else {
        label.text=label.text! + String (sender.tag-1)
    numberOnscreen=Double(label.text!)!
        }
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double (label.text!)!
        
            if sender.tag == 12
            {
                label.text = "/"
                
            }
           else if sender.tag == 13
            {
                label.text = "x"
            }
            else if sender.tag == 14
            {
                label.text = "-"
             }
            else if sender.tag == 15
            {
                label.text = "+";
            }
            operation = sender.tag
            performingMath = true ;
        }
         else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String (previousNumber / numberOnscreen)
            }
            else if operation == 13
            {
                
                label.text = String (previousNumber * numberOnscreen)
            }
            else if operation == 14
            {
                
                label.text = String (previousNumber - numberOnscreen)
            }
            else if operation == 15
            {
                label.text = String (previousNumber + numberOnscreen)            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            numberOnscreen = 0;
            previousNumber = 0;
            operation = 0;
                }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

