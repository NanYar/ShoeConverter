//
//  ViewController.swift
//  ShoeConverter
//
//  Created by NanYar on 08.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let stringSizeFromTextField = mensShoeSizeTextField.text
        let optionalNumberFromTextField = stringSizeFromTextField.toInt()
        
        if optionalNumberFromTextField != nil {
            let intFromTextField = optionalNumberFromTextField!
            
            if intFromTextField > 2 && intFromTextField < 17 {
            
            let conversionConstant = 33
            let result = intFromTextField + conversionConstant
            let stringWithUpdatedShoeSize = "\(result)"
            
            mensShoeSizeTextField.text = ""
            mensShoeSizeTextField.resignFirstResponder()
            mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
            mensConvertedShoeSizeLabel.hidden = false
            } else {
                mensShoeSizeTextField.text = ""
                mensConvertedShoeSizeLabel.text = ""
            }
        }
        
     }
}
