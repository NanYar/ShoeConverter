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
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func mensConvertButtonPressed(sender: UIButton) {
        
//      let stringSizeFromTextField = mensShoeSizeTextField.text
//      let optionalNumberFromTextField = stringSizeFromTextField.toInt()
        
        let optionalNumberFromTextField = mensShoeSizeTextField.text.toInt()
        
        if optionalNumberFromTextField != nil {
            let intFromTextField = optionalNumberFromTextField!
            
            if intFromTextField > 1 && intFromTextField < 15 {
            
                let conversionConstant = 33
            
                mensShoeSizeTextField.text = ""
                mensShoeSizeTextField.resignFirstResponder()
                mensConvertedShoeSizeLabel.text = "= \(intFromTextField + conversionConstant) in EU shoe size"
                mensConvertedShoeSizeLabel.hidden = false
                
            } else {
                mensShoeSizeTextField.text = ""
                mensConvertedShoeSizeLabel.text = ""
            }
            
        } else {
            mensShoeSizeTextField.text = ""
            mensConvertedShoeSizeLabel.text = ""
        }
        
     }
    
    
    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        
        let doubleFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        if doubleFromTextField > 2 && doubleFromTextField < 16 {
            
            let conversionConstant = 31.5
            
            womensShoeSizeTextField.text = ""
            womensShoeSizeTextField.resignFirstResponder()
            womensConvertedShoeSizeLabel.text = "= \(doubleFromTextField + conversionConstant) in EU shoe size"
            womensConvertedShoeSizeLabel.hidden = false
            
        } else {
            womensShoeSizeTextField.text = ""
            womensConvertedShoeSizeLabel.text = ""
        }
        
    }
    
}
