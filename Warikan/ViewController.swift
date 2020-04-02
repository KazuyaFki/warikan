//
//  ViewController.swift
//  Warikan
//
//  Created by Kazuya Fukui on 2020/04/01.
//  Copyright © 2020 Kazuya Fukui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var numberOfPeopleTextField: UITextField!
    
    
    @IBOutlet weak var priceTextField: UITextField!
    
    
    @IBOutlet weak var warikanLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        numberOfPeopleTextField.delegate = self
        priceTextField.delegate = self
        
        numberOfPeopleTextField.keyboardType = UIKeyboardType.numberPad
        priceTextField.keyboardType = UIKeyboardType.numberPad
    
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        
    }

    @IBAction func warikanButton(_ sender: Any) {
        
        let number = Int(numberOfPeopleTextField.text!)
        let price = Int(priceTextField.text!)
        let warikanPrice = price!/number!
    
        
        warikanLabel.text = "\(warikanPrice)円だよ"
    
    
    }
    
}

