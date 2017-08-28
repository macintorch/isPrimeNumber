//
//  ViewController.swift
//  Is It Prime
//
//  Created by Ainor Syahrizal on 27/08/2017.
//  Copyright © 2017 Ainor Syahrizal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func checkNumber(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            let userEnteredInteger = Int(userEnteredString)
            
            if let angka = userEnteredInteger {
                
                var isPrime = true
                
                if angka == 1 {
                    isPrime = false
                }
                
                var counter = 2
                
                while counter < angka {
                    if angka % counter == 0 {
                        isPrime = false
                        resultLabel.text = " \(angka) is not a prime"
                    }
                    counter += 1
                }
                
                if isPrime {
                    resultLabel.text = "\(angka) is prime."
                } else
                {
                    resultLabel.text = "\(angka) is not prime."
                }
                print("\(angka) is \(isPrime) prime")
                
            } else {
                resultLabel.text = "Please enter positive number"
            }
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

